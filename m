Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C43748224
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 12:28:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FB994085F;
	Wed,  5 Jul 2023 10:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FB994085F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688552936;
	bh=blZUuE27wJCF9kNVq0McN8xDSVbGji+zu7xtpWwM19k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=alYYiV/q9rvmusDxnD8C2b8X9Uhbqrhus35Id1RORomCnNXVjc4TMhU/C0B3NQc9U
	 g/bltNrswnP9faRbO6AlcoBl7tOaXnsPNyqba/6mIhknVIBfIdZ5CfjZAd00g4xWYS
	 2zQCAhtVBZGmRVDdaZtRTwnbFvKgefZ9RNxeNrBjiUOx4te7gS6dLiYpXwtHwsb1PW
	 Xyo56Al94P+azRB7c8Wu2gX0cb6vlA+AuzV79t6OTyJP4Z+VGOnL41qlolW+PyAnDM
	 fllA5Qe28XWjhg2ZUH39AHeHjXDh/3IJ7uI0eQKEFJuh6Kz12miKVzY8VSLeTrWl4s
	 wvte4UxT173Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rkg1TL3l55Vq; Wed,  5 Jul 2023 10:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F675401E4;
	Wed,  5 Jul 2023 10:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F675401E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 226B61BF82D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 10:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE4E34020B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 10:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE4E34020B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4c0wAYxfT2aG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 10:28:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44BD0400D9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44BD0400D9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 10:28:48 +0000 (UTC)
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com
 [209.85.217.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-259-ERGOdo-9NV6RmkN2KqeXNg-1; Wed, 05 Jul 2023 06:28:45 -0400
X-MC-Unique: ERGOdo-9NV6RmkN2KqeXNg-1
Received: by mail-vs1-f71.google.com with SMTP id
 ada2fe7eead31-440aa3a13bcso97319137.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Jul 2023 03:28:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688552925; x=1691144925;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gaRBNJkOnaaSRUUKURGngA0lO7NJcgI2BAIjJLAUBVs=;
 b=a8hMKDjMCpRxbs/aaj1Q84q5YyLoDWoz/Rn3hfouZCyX1X9mmRSfVXDCoHbeJ/pVkN
 CKjOSF22rfZjAvJ0dF8zIZfrciOxu8I8HbwXYrWDG55bCxUJd7LO8C3lk+KK14rbJPj8
 /MhyIHODa5CrQvlyhSsR/OKL+sFjTR3/iJToT7SFq+8NFl/oq9DkF7rm+3cs3fqOAPIw
 gpd49oBAxu7y3iABO5SKX0IZxKY7x1kU86PKJrQYo4q1cUNQvAf7oE0W1smX5wVltGpZ
 HHMBKWTmdLKYYFn2EFBnANdjeUBckBvY7o3LhJKkwjxRTPFZIDDvovv1NzHBXQxoVjf3
 hIBg==
X-Gm-Message-State: ABy/qLbckbX86liOJJxDfVBA+S1np9IDGozvRJSVzGRHmhXa28kk2pZu
 dE5iIiVUfEbv48dljpzEzSx4EMjUsu0Oo+qmgQ40WbE9qYIhOXzuYrk02gqkDywKI3vq+UybVyS
 lY1YX0nhhCpeSMfL7+i9vV460A7+0Sg==
X-Received: by 2002:a05:6102:1612:b0:443:58b5:ecbf with SMTP id
 cu18-20020a056102161200b0044358b5ecbfmr5739466vsb.0.1688552925093; 
 Wed, 05 Jul 2023 03:28:45 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHrDJ+TfFusA3C/7TfnvROpll19p/QwWd+s6VUdXx2Bu0WCxdDZG9XQkvxflQGQ9I3YXyZ9SA==
X-Received: by 2002:a05:6102:1612:b0:443:58b5:ecbf with SMTP id
 cu18-20020a056102161200b0044358b5ecbfmr5739457vsb.0.1688552924795; 
 Wed, 05 Jul 2023 03:28:44 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-249-75.dyn.eolo.it.
 [146.241.249.75]) by smtp.gmail.com with ESMTPSA id
 e14-20020ad4418e000000b006363f2c37f0sm6665534qvp.91.2023.07.05.03.28.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Jul 2023 03:28:44 -0700 (PDT)
Message-ID: <d9bf21296a4691ac5aca11ccd832765b262f7088.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 05 Jul 2023 12:28:40 +0200
In-Reply-To: <CAA85sZt6ssXRaZyq4awM0yTLFk62Gxbgw-0+bTKWsHwQvVzZXQ@mail.gmail.com>
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
 <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
 <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
 <ffb554bfa4739381d928406ad24697a4dbbbe4a2.camel@redhat.com>
 <CAA85sZunA=tf0FgLH=MNVYq3Edewb1j58oBAoXE1Tyuy3GJObg@mail.gmail.com>
 <CAA85sZsH1tMwLtL=VDa5=GBdVNWgifvhK+eG-hQg69PeSxBWkg@mail.gmail.com>
 <CAA85sZu=CzJx9QD87-vehOStzO9qHUSWk6DXZg3TzJeqOV5-aw@mail.gmail.com>
 <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
 <CAA85sZuuwxtAQcMe3LHpFVeF7y-bVoHtO1nukAa2+NyJw3zcyg@mail.gmail.com>
 <CAA85sZurk7-_0XGmoCEM93vu3vbqRgPTH4QVymPR5BeeFw6iFg@mail.gmail.com>
 <486ae2687cd2e2624c0db1ea1f3d6ca36db15411.camel@redhat.com>
 <CAA85sZsJEZK0g0fGfH+toiHm_o4pdN+Wo0Wq9fgsUjHXGxgxQA@mail.gmail.com>
 <CAA85sZs4KkfVojx=vxbDaWhWRpxiHc-RCc2OLD2c+VefRjpTfw@mail.gmail.com>
 <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
 <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
 <CAA85sZs2biYueZsbDqdrMyYfaqH6hnSMpymgbsk=b3W1B7TNRA@mail.gmail.com>
 <CAA85sZs_H3Dc-mYnj8J5VBEwUJwbHUupP+U-4eG20nfAHBtv4w@mail.gmail.com>
 <92a4d42491a2c219192ae86fa04b579ea3676d8c.camel@redhat.com>
 <CAA85sZvtspqfep+6rH8re98-A6rHNNWECvwqVaM=r=0NSSsGzA@mail.gmail.com>
 <dfbbe91a9c0abe8aba2c00afd3b7f7d6af801d8e.camel@redhat.com>
 <CAA85sZuQh0FMoGDFVyOad6G1UB9keodd3OCZ4d4r+xgXDArcVA@mail.gmail.com>
 <062061fc4d4d3476e3b0255803b726956686eb19.camel@redhat.com>
 <CAA85sZv9KCmw8mAzK4T-ORXB48wuLF+YXTYSWxkBhv3k_-wzcA@mail.gmail.com>
 <CAA85sZt6ssXRaZyq4awM0yTLFk62Gxbgw-0+bTKWsHwQvVzZXQ@mail.gmail.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688552927;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=meU5stO6KWyo006YGbe2sw4LrM1dXhqVev6kkxZLW2c=;
 b=ZQX3ZewBElMfkEc90cWaqjGmVd5K4hB7XKCx+RD1EFiO2DGe4F1zUoELGvima9lfL30n77
 qyWGJ3LoEQuFf56kEqHvDdO7DUVwqRbxoUlEA5kBp5acJFSCy5YwAnmjDmF4KkXzPBYF46
 zjSzhLfO/bzDxjXInaGevmxT5Paivwc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZQX3ZewB
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2023-07-04 at 16:27 +0200, Ian Kumlien wrote:
> More stacktraces.. =)
> 
> cat bug.txt | ./scripts/decode_stacktrace.sh vmlinux
> [  411.413767] ------------[ cut here ]------------
> [  411.413792] WARNING: CPU: 9 PID: 942 at include/net/ud	p.h:509
> udpv6_queue_rcv_skb (./include/net/udp.h:509 net/ipv6/udp.c:800
> net/ipv6/udp.c:787)

I'm really running out of ideas here...

This is:

	WARN_ON_ONCE(UDP_SKB_CB(skb)->partial_cov);

sort of hint skb being shared (skb->users > 1) while enqueued in
multiple places (bridge local input and br forward/flood to tun
device). I audited the bridge mc flooding code, and I could not find
how a shared skb could land into the local input path.

Anyway the other splats reported here and in later emails are
compatible with shared skbs.

The above leads to another bunch of questions:
* can you reproduce the issue after disabling 'rx-gro-list' on the
ingress device? (while keeping 'rx-udp-gro-forwarding' on).
* do you have by chance qdiscs on top of the VM tun devices?

The last patch I shared was buggy, as it attempts to unclone the skb
after already touching skb_shared_info.

Could you please replace such patch with the following? 

Thanks!

Paolo
---
diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 6c5915efbc17..0b0f4309506d 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -4261,6 +4261,17 @@ struct sk_buff *skb_segment_list(struct sk_buff *skb,
 
 	skb_push(skb, -skb_network_offset(skb) + offset);
 
+	if (WARN_ON_ONCE(skb_shared(skb))) {
+		skb = skb_share_check(skb, GFP_ATOMIC);
+		if (!skb)
+			goto err_linearize;
+	}
+
+	/* later code will clear the gso area in the shared info */
+	err = skb_unclone(skb, GFP_ATOMIC);
+	if (err)
+		goto err_linearize;
+
 	skb_shinfo(skb)->frag_list = NULL;
 
 	while (list_skb) {

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
