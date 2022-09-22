Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 384D65E592E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:11:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8637826C0;
	Thu, 22 Sep 2022 03:11:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8637826C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816294;
	bh=DfMMQnmxbOd6GprrBoSCwE+TfB0ZjHg1xnLkEUcRtKc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d8je6iptwuYMA/oUBXvUoik1MF0EMmqMiYb5UMtHja2LIK3wRPtYycqcPEaKfQth2
	 IGyHb8FcTbHTEHIkcBsaQq7GRQG4lPGPV2E3InqDcTwN+Bu/FoLrNNt9LStdkkr2+w
	 0PvVB5EtG+wFgplZ2GEDt7CQ/Az5W0L28CaXcrsgfJSlmomzu68QDe+bC1YrhVsI4a
	 q6zcqoJbs0oAp1bIZu9GdOJCJ9lHqmwF9yuQGk34HF6u0qyr4AQZ2wZTUjqpKAVnll
	 jj1sT4dIEedyQSR4MOi1ZxCdf5gypnuTrICfeCnuQZBzyxi03NjkS7XOwnLvxSDAn3
	 FYtKLqwDo5koA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OiHdl2em9n6X; Thu, 22 Sep 2022 03:11:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B804812D9;
	Thu, 22 Sep 2022 03:11:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B804812D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 287771BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0AA53418E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AA53418E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id faK5MKz_hBA4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0D28418FE
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0D28418FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:29 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id l10so7522208plb.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=TDASAml4kCnGP6A0dhCkNjKPm18x/T6dZyC75aPZacc=;
 b=t085J9SjDFDXimmUoj0q3czSgD7gTbdRtE6blhJKzVrWY11zju7xUNm1DToCowvluX
 s1iSPdVxSLTfU02czdFauN+sQ0mKJNzu4nbq4nhFJpjQHv4NJUkP/nzVcD9Q+5XqsIHJ
 CR2q2FAkM+UxefBTRSB3ZgpKLISvMskE+HNn5BmE2hP+TJAxbn56fA+ppSur8YCIsiwn
 l7PthAfkmZat8CACHUc1iqyam6iszFLhGZgqtUxIid4GtzDoQNdSqrgfmO2k7Aa843MZ
 rjFvaShxmNZ1DzIhRhlZRonec9cZmsSvaBvWDFpdhK+t/RaTIwN8YLf4tyYBMf/SYJiv
 S+Eg==
X-Gm-Message-State: ACrzQf1YZEFJWqyODIT8gJRokGR5/Qg+j6uJ+9BMQgnMgk7JsRqCS3WM
 FkcLWHxO6f61SPxT/zl8sdeu7Q==
X-Google-Smtp-Source: AMsMyM6FwJ0f+Bofi6cEtpiWEB7NdUhtmrkt85vC8m03N7qUc6HActCoKwZbZiJ520VUx/+qozuRZA==
X-Received: by 2002:a17:902:ec85:b0:178:8a69:45fb with SMTP id
 x5-20020a170902ec8500b001788a6945fbmr1346743plg.130.1663816229473; 
 Wed, 21 Sep 2022 20:10:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 t11-20020a170902e84b00b001782a6fbcacsm2768353plg.101.2022.09.21.20.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:09 -0700
Message-Id: <20220922031013.2150682-9-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220922031013.2150682-1-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1419; h=from:subject;
 bh=BnVOhrGnWnn0qmsrneuatz5VZroW3iZYMrlDdw6WzZA=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9ITSglsXN14oMtyaHSvyKAfYqb/jU+ua3WQ3QDI
 +BCEy4WJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSEwAKCRCJcvTf3G3AJuckD/
 0fC2DD7jgGoKpFD7s52Imf5skay/p4qVmK0rvZNjkGAmNGvUFsTnir5GI3TMV3p/FWB9oxlzjn3lRJ
 YbQuqElrhpv1aHtZF5nq2pNe2WeidRtExDsumfRW/9rwf58N/wfxbElAY9GHoqVRc3lUIV9oQYeOhK
 1kJwstuo1zV2TYN4g0iYTTSXNQhbPXQ513gM0PP9l/YiITmzLOgjZgDFaN+QjDNsRclDp6Yt0t3KK0
 u44yaM81Tj4s/G/cazw7Jsf6TLb2WBPqCt8tdGe27UEsHIqsFjpRY7nmsAAp8iG8Xem8x+/oYI/Wbk
 HgMgUuw1m5UkfchSrwCJfeis+j1yNloKfOqqnWkCkG+hSthHxri16TT3gYtEK81SyX7qdZEi0YzWC1
 HzPQNdrH6o3PN6vMQOI+fCDeICkvey7UrPwFg21Eqq5d0i1Q/IjdJkPIS5rxpe10rGou2R7M83TPCj
 g7LmoCyTxmRqFzEzRuBHtLLGVMHa5PjJy+FD8ubMoYHOzgg+Mw1qV+65O4LUccNAhythMxiYUkwGsA
 5/JlFokXB6JtqWVHa5OTlymJF5c70uDllOyQsXSHJV/6Th+1UpurayKJIgQFsm/OxxbzV0XgUK3Dam
 UhsIlzfHslsALppIqri1WH09qAL4uxlG1Se3WTFKlmYiDtPENjS7L1iOMWDg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=TDASAml4kCnGP6A0dhCkNjKPm18x/T6dZyC75aPZacc=;
 b=WPgEF+jupR4SGB4DLno2k2bBCbZ8b8f+ZrlxKcIQeEbCtj5WBgsCFhiT+NIX1Fpq8q
 RVzdxz0WZY9Xy+TjHVDvowfkPuPW/OFy/IlUhIW+WjLJlx/oYe632OrUVLWT43o6LOap
 J1uHENSlV+a7neJtjBRovZ5eH4VN/4Sv8DcCs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=WPgEF+ju
Subject: [Intel-wired-lan] [PATCH 08/12] openvswitch: Proactively round up
 to kmalloc bucket size
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
Cc: linux-wireless@vger.kernel.org, Jacob Shin <jacob.shin@amd.com>,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 Pravin B Shelar <pshelar@ovn.org>, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of having a mismatch between the requested allocation size and
the actual kmalloc bucket size, which is examined later via ksize(),
round up proactively so the allocation is explicitly made for the full
size, allowing the compiler to correctly reason about the resulting size
of the buffer through the existing __alloc_size() hint.

Cc: Pravin B Shelar <pshelar@ovn.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: netdev@vger.kernel.org
Cc: dev@openvswitch.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/openvswitch/flow_netlink.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/openvswitch/flow_netlink.c b/net/openvswitch/flow_netlink.c
index 4c09cf8a0ab2..11b2e2c94c7e 100644
--- a/net/openvswitch/flow_netlink.c
+++ b/net/openvswitch/flow_netlink.c
@@ -2306,10 +2306,12 @@ int ovs_nla_put_mask(const struct sw_flow *flow, struct sk_buff *skb)
 static struct sw_flow_actions *nla_alloc_flow_actions(int size)
 {
 	struct sw_flow_actions *sfa;
+	int alloc_size;
 
 	WARN_ON_ONCE(size > MAX_ACTIONS_BUFSIZE);
 
-	sfa = kmalloc(sizeof(*sfa) + size, GFP_KERNEL);
+	alloc_size = kmalloc_size_roundup(sizeof(*sfa) + size);
+	sfa = kmalloc(alloc_size, GFP_KERNEL);
 	if (!sfa)
 		return ERR_PTR(-ENOMEM);
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
