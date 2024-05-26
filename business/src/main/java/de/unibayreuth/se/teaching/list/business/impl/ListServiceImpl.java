package de.unibayreuth.se.teaching.list.business.impl;

import de.unibayreuth.se.teaching.list.business.ports.ListService;
import de.unibayreuth.se.teaching.list.business.ports.Value;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.Arrays;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ListServiceImpl implements ListService {
    private final DoublyLinkedList list;

    @Override
    public List<Value> get() {
        return Arrays.stream(list.asArray())
                .boxed()
                .map(Value::new)
                .toList();
    }

    @Override
    public void append(List<Value> valuesToAppend) {
        valuesToAppend.forEach(value -> list.append(value.getDoubleValue()));
    }

    @Override
    public void clear() {
        list.clear();
    }
}
