Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0143D602842
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 11:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50A8A4184D;
	Tue, 18 Oct 2022 09:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50A8A4184D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666085137;
	bh=am0WmpXvHzIWZpU/xHA9TgVeknHpWRkVSwlXusYRPeE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fdaPb8IbX4cSg/oHekwM1Zm5RJN0oNN+reE4N+9pStQgZSmPdVXYN1egE6jVcCCWH
	 Z/MvqUIgdX0Ijuya12ovPqiqFy4mEZxHsiGQ9vlS7u6wHZHWB/xGT+Gzo9s35/CF3H
	 OaNxms7qPDtw0ViCB441Zlk9NaKz32UXVw7YRbbd9ehmpGnBJLM6mWU6OW8OtGwXfW
	 uIGEnx1IWLJpDsFCIMV0UdzMjP0ZnUN/YxCA50NJEql6wFblalG9slbUNiqwDDJDJd
	 k3yCxvnfwQwmuPsGv99dt80yxA6YQzg8j4o8jJK+0FlxEjIVJ18+qoVeGcDWKP1X0o
	 FyZhxMRhbkyzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VVt3Mokwv7KL; Tue, 18 Oct 2022 09:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1361417B3;
	Tue, 18 Oct 2022 09:25:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1361417B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85ED01BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 09:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6018760FD8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 09:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6018760FD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0sNUcieT3OG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Oct 2022 09:25:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3A9860B60
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3A9860B60
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 09:25:29 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id 78so12786819pgb.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Oct 2022 02:25:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RqxmiGcyV/mYk+QnLNTvWwmJYpQlgvRrFVxVqfYig2w=;
 b=ODTKaXlUMxsZzw7thlJ6T6SmXiZjsw+dJVhJbsuC4n2kpHHblhY6Uj97crBSNq0Q1E
 eXne9Dqm+PASLx4tbKnLdGkAS28IbYVu0d5q+fgZnHDz62Xyo77eKe0GDoh5+K8Pi0lm
 erFNHeRjTpG7Hk903eLhqkJKzFz7FZbw9jzJ7cfRIYu3PbkjMz2T96GsUQGlt4BxK0S4
 TNJr/nxiA4O+v8YV1DLJug/VivM2KL1GJJaJ+IfkbBY+ek5W269/wtgbYachDkwA2mvm
 WajIsqGfKAU/hPkVF8l+Rknqfl90uBJa0SHjqs8YaN1272ZrgFkU0T+ca35hUpEvF+Lh
 oaYA==
X-Gm-Message-State: ACrzQf1b827BofFRKiVAWc7k6mOu0PuoYbLEeuoyk7cBbQTh21O+vXVA
 U2LbLyG9hjbm0Kn9kiYOtvSJvw==
X-Google-Smtp-Source: AMsMyM40urcw8Pb7S8ckoDST6aKu+pm+tQR6oHRoX1O+U0ftrbh4sDAM/9HRAv8LcoqmNLrOKmM3jg==
X-Received: by 2002:a05:6a00:b95:b0:565:9cbd:a7e5 with SMTP id
 g21-20020a056a000b9500b005659cbda7e5mr2242933pfj.74.1666085129233; 
 Tue, 18 Oct 2022 02:25:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 y2-20020a170902864200b001754cfb5e21sm8170513plt.96.2022.10.18.02.25.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Oct 2022 02:25:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ruhl@www.outflux.net, Michael J <michael.j.ruhl@intel.com>
Date: Tue, 18 Oct 2022 02:25:25 -0700
Message-Id: <20221018092526.4035344-2-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221018092340.never.556-kees@kernel.org>
References: <20221018092340.never.556-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1271; h=from:subject;
 bh=Lg7BoPA33TyF1N9Ak5ejRPt+aJUHR3UR0w6mwamzyDU=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjTnEF5cGlPXkPcKPv34lox4vlIGHaJ00+4ZE1Nfh7
 Om9sbOGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCY05xBQAKCRCJcvTf3G3AJgc8D/
 9jBTPoFwFRkggAABohaocGh+SUXdr/tnCRtpBj1FnUDptaAqftQwbSemQKe/dNGdevoTRrcqFgYYLT
 QMvF6A5/qBFO7QiysDelk5iQt8J81h+leDO5DJnFZkQ2HMKCT2i0KVHUBSzzYgvAIlEalNqp3hz1Ws
 /BqyZq+CFVZ9jGet8Pap7DAGjauTXZyOCbjcf37mi+9pUHIX0fQB74d/oUBVh22x9s0TxbJZtcp0HQ
 dVAL5ulwMgSTvikjYGwzlDjdZJ3n7FWqNnXLFH+h4m8JFDZnyVq7ORhWQHzsvMton83QYopI5GTn2N
 ltGBC4L9wK4uPtiO4+VRw7sKkcuGPIiuXo+fA9pScZopO9vTcXbXaREhQ1bqSzmSHfQTsFR3GA2WvP
 lrohwfZk73id4wpmWwcibd6erFkaGn3MThfnABeNAwOV4lGFLjUWgM0gd6owrwii5bUyoMwkx1fPLQ
 jyQKhVIjNYs5DGv1dT4HJSiGVSBdkDZb6O+84PLYpUoDGP0QXg1K0y6nG/lJz6hkW2hPflxjO+Aefo
 RLXTCeTG7FcKDzuUbNugmuICL8B3oUKG/iXY7fKYbVAl/2mpUgXMe2rFw3c8NBHreGhiKQpwpC/9jN
 CowsdSTEpdA5snuZ++ijX40XFdZFNGUxDYGavFpVpvqBV6g3PXsyeVKWYvBg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RqxmiGcyV/mYk+QnLNTvWwmJYpQlgvRrFVxVqfYig2w=;
 b=n5v+XaUqdK0+YZuXiM/XX3batect/k3rJvwMnNLANYSL1DpJ+RImp3kOJ5HqhKUyii
 ooP8NryD/OQXpkXZhU024WM8KNVYn0QQCY47VPI0TA1PHLyy+8pGcoL/5Qz4K4HhdxgJ
 crj+l/0hqMhq2l3cDfm6MR1V8ZCaeE5z3GI3Q=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=n5v+XaUq
Subject: [Intel-wired-lan] [PATCH v3 2/2] igb: Proactively round up to
 kmalloc bucket size
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Kees Cook <keescook@chromium.org>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation for removing the "silently change allocation size"
users of ksize(), explicitly round up all q_vector allocations so that
allocations can be correctly compared to ksize().

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 6256855d0f62..7a3a41dc0276 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1195,7 +1195,7 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 		return -ENOMEM;
 
 	ring_count = txr_count + rxr_count;
-	size = struct_size(q_vector, ring, ring_count);
+	size = kmalloc_size_roundup(struct_size(q_vector, ring, ring_count));
 
 	/* allocate q_vector and rings */
 	q_vector = adapter->q_vector[v_idx];
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
