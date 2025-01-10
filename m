Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2136A08863
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 07:34:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05B6A60B55;
	Fri, 10 Jan 2025 06:34:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DyGRSV1BUVFM; Fri, 10 Jan 2025 06:34:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E50C460B58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736490866;
	bh=BNZq0Fk2DvEFJJwfUaECnwObY3vnD1aWKIhQYdehgvU=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MXjkl1ktcvPhZQ9wEMsmZ54hNrD0EGy8oBZGIwPAbdVAhPaAGYplWaS5xNyNvDRRF
	 D/EqKwjefkM39yKWjQt6MQHIqamvAvnpQfBDoGUXaBRf/wdomEwgGlyOxG6gPk7xSe
	 KWsxgO7zByDEL4Wie8YzCj+M91QZXmF/MrIDCMgOP1+54QWY+64lHkrbV053meP9A3
	 ZBZmk9Z1sFemHz++KzHZQbdvyr4crSaFgZVaUYsfK75rnaDTpy39eN0/XBP7mzvz2o
	 u+y2SeicWSAfQmZAKp20ZJ1LAUg3dOysxvqQc8Y6Xgb2I1dXwfbKlxzEoVWP6ffJiU
	 eEI6q+TRQBQng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E50C460B58;
	Fri, 10 Jan 2025 06:34:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4AFF0942
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 06:34:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42DA440FB3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 06:34:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v3cDQ-q3zM3k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 06:34:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::329; helo=mail-wm1-x329.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D52A140FB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D52A140FB1
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D52A140FB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 06:34:22 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-436281c8a38so12341765e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 Jan 2025 22:34:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736490860; x=1737095660;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BNZq0Fk2DvEFJJwfUaECnwObY3vnD1aWKIhQYdehgvU=;
 b=PRpUrjxXs/NqozV3DvefxESIZoJHi71gK0Dz2ISGst35ovu+s0aoUXTTS77NRolUXy
 Eo/sE5Ljs5G5bSLUm6UsWzj4mjoBn763YQlpxbKCv23AwG4nwdhtMhyW01qbJsjhu2KJ
 xutwOXy+5QE4FT5Ryg9gg8lcPJ7WnZZoFzI0eL4z7GPadIcUBXVWVV60uSFWCFV2mH/Y
 9Yge0dxuoS6H+KQcME5OHWNdkvBiUSNDNpLg7KX1pKXl1SmYu5r2T/R0WmiG9gR4u42D
 iFZo6d9p5ap7+l9gBtOjlRZdRrPO31+6pPK/GO2OdbwvUq5q4hy5atBXHL90tpgIjQLI
 wZ2g==
X-Gm-Message-State: AOJu0YyXu/vVEIDdyqyZSvI5/GdXzFDZrs//UaTYjAxVpmiGdTS4e1L4
 OTGY86kyCIcocIPLkKfWJAyLGu16E5jk2o40CB8HEctBuU7Kf+F8Fw6bapwaWOg=
X-Gm-Gg: ASbGncu1dD7nI+8JIOGrsLefmtg1zefI/1baZfPWJdKOE82XoW4zBucOH+7l7dVX2pf
 +KP7U2+AvHL0r4H2RjWKnuO46q/n+fAdYKk9lAync4Klbz3wanhCnLgfy1RS/acTPA6JAE3sLXo
 PcVVEn9RUn/UycGSotL2aSa6+xZPCYDHYPMxHFON6SgkF+I5SXMZmiN64KPvNC1HHqKt7k8x+Tn
 T5i+vXKjHpDpI09+4XhUH08aj0z/W1FbowKjm157NE3sJXmr/Mvxs3p/wwI1w==
X-Google-Smtp-Source: AGHT+IGY4xuaEo8+y842Uuklp2uoW4bK2dkJbAxJHYZ4bHjP64d0JsP9m5xBwxrrengI+nSaxLLeag==
X-Received: by 2002:a05:600c:5355:b0:436:ed33:1526 with SMTP id
 5b1f17b1804b1-436ed33162amr33714415e9.9.1736490860653; 
 Thu, 09 Jan 2025 22:34:20 -0800 (PST)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436e9e37d69sm41686935e9.30.2025.01.09.22.34.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2025 22:34:20 -0800 (PST)
Date: Fri, 10 Jan 2025 09:34:17 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Yue Haibing <yuehaibing@huawei.com>
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <2c7d6c31-192a-4047-bd90-9566d0e14cc0@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736490860; x=1737095660; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BNZq0Fk2DvEFJJwfUaECnwObY3vnD1aWKIhQYdehgvU=;
 b=xzfeG7p4ChC8bFKw/jPTNJkKV67x/WzkbT7/0ODjyT+oJqMsNZ/WH5595SWP8gZfGN
 A4BUuShGlR7RhiVz77ybb9ek1UWqwpvtLDlU7oLsx6LnQgMSkaju/SSj5HULnpL2u9NK
 JInmRjK9ZfUnFb5QSWhLbeopSbxpA/L25ycLAHE+1YY9slssGZrDtsRg35yzx74Mx38N
 wWmqfhKV+RSydjUlH+uouU7lIj6UJKTENKqRw5kx8EZ2XQ+rxUHbA2vxHtRMahYf7hKa
 uZRtFhtqD1fLpon9h1J4bxxnOaIU1mToJb+Xf9UPq0kfmD1lPvpcfQRQeRTRxu3MVZzP
 R6ng==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=xzfeG7p4
Subject: [Intel-wired-lan] [bug report] ixgbe: Fix passing 0 to ERR_PTR in
 ixgbe_run_xdp()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Yue Haibing,

Commit c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in
ixgbe_run_xdp()") from Jan 6, 2025 (linux-next), leads to the
following Smatch static checker warning:

	drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2108 ixgbe_put_rx_buffer()
	warn: possible NULL dereference of 'skb'

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
    2099 static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
    2100                                 struct ixgbe_rx_buffer *rx_buffer,
    2101                                 struct sk_buff *skb,
    2102                                 int rx_buffer_pgcnt)
    2103 {
    2104         if (ixgbe_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
    2105                 /* hand second half of page back to the ring */
    2106                 ixgbe_reuse_rx_page(rx_ring, rx_buffer);
    2107         } else {
--> 2108                 if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {
                                     ^^^
This can't be an error pointer and probably it should be a NULL check.
I'm not sure if your patch introduced this issue or just exposed it.

    2109                         /* the page has been released from the ring */
    2110                         IXGBE_CB(skb)->page_released = true;
    2111                 } else {
    2112                         /* we are not reusing the buffer so unmap it */
    2113                         dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
    2114                                              ixgbe_rx_pg_size(rx_ring),
    2115                                              DMA_FROM_DEVICE,
    2116                                              IXGBE_RX_DMA_ATTR);
    2117                 }
    2118                 __page_frag_cache_drain(rx_buffer->page,
    2119                                         rx_buffer->pagecnt_bias);
    2120         }
    2121 
    2122         /* clear contents of rx_buffer */
    2123         rx_buffer->page = NULL;
    2124         rx_buffer->skb = NULL;
    2125 }

regards,
dan carpenter
