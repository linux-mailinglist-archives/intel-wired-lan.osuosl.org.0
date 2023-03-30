Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5571A6D0EAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 21:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E43FF60BE5;
	Thu, 30 Mar 2023 19:24:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E43FF60BE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680204267;
	bh=rrwCPbdLKXI+/1KwtSeSEzFplCtx8/ATc8XWLGrq/XI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S0r9jj+LYvfvScUev6SRCva9n5yOEXRonqxmaBjalaKwEh7lpwyk8l9+E/guhpusR
	 M6fxg4anKXiUQ5vLk2j7w7Y+SbDhVASgQTez0fh3vo0H3WX3psUOObbRnOTchARuBC
	 aomSZ5BIJfwc0W5Va7Cnj+Ru8aFhsD+1eBh6DsD4r6UcCo9j0I1SdY4STbhec3y6iH
	 dB2er/Ny4jezARGyMhPUJTMjjoAAUbYNZDQVwrUZz1VgajAw1+8pBbCYq9ZQVxiTFH
	 rRDzWZ8/IAXiABvqhMpcsOrvYyzH1I/38T33OOCEzo5OUJJCL+PPQjP6hbjornW+HW
	 6qvvIGzVA7TSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CD6_W4FTW78j; Thu, 30 Mar 2023 19:24:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D109260BCB;
	Thu, 30 Mar 2023 19:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D109260BCB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 375F41BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F98B41EC2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:24:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F98B41EC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GI1dsw-mDv_m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 19:24:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56F26404A5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56F26404A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:24:21 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-507-6KYFxCZjOhSHyNWQYVy8wQ-1; Thu, 30 Mar 2023 15:24:12 -0400
X-MC-Unique: 6KYFxCZjOhSHyNWQYVy8wQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 b18-20020a50b412000000b0050234a3ad75so23506644edh.23
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 12:24:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680204252;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HBqpSW6QK4EA+LClEvnqsikCHd1YVrQiiftMR2XV5Rc=;
 b=KU5IWfM4EUFW8EYTY9uC8RRmHH+Fj+1W1uImqmsSpFw1beBnw9q6xhGG+QTiwkdfRg
 dfR3PZl8vkRXzjNtaHIEM1zPZc/cRmdmZUeoc7fwS2VSLjelMPEl3LEY4P9OVyxaiImx
 OaynA6tsquyBmlLyp79JE3N22YBF773dQVdtXZksSXzlPZnggtjaVO/W6WMmFmTHiioW
 S2N1GTNb27NbxfAQJy/rA7tI1mOMUpd0aXta1FvEIRW3UsRG68Mhf5kfAYrrfqVT18d0
 KPQakhT3Bd1t4FvpkdStenE+ylwoqejAWQLASu4KySwxZvwAn4TWfjpTrjpHe3BQiJA7
 gfTQ==
X-Gm-Message-State: AAQBX9fSeVgc5DApHMBvkj3C0wiipIMSdXYOrNkYTe3VLR08w0wngXU2
 Vklt8nQU8cGJnNbg+7tDdYfYEL9MQ8UsKz1cDb+44AFWXCkc1w9llkecoD1vv2/1K6YhS7lgX+O
 F2a1gtn9cH0zwbusAmuxg1IIC/CcDgw==
X-Received: by 2002:a17:906:f29a:b0:933:816c:abb9 with SMTP id
 gu26-20020a170906f29a00b00933816cabb9mr6510542ejb.36.1680204251870; 
 Thu, 30 Mar 2023 12:24:11 -0700 (PDT)
X-Google-Smtp-Source: AKy350YRFH6WV6KD6S27b8VZNNgwBJYd+z/cdioM+cIk73QZtr3NowyOAQvVk7LllNJraDEBULrnPQ==
X-Received: by 2002:a17:906:f29a:b0:933:816c:abb9 with SMTP id
 gu26-20020a170906f29a00b00933816cabb9mr6510517ejb.36.1680204251499; 
 Thu, 30 Mar 2023 12:24:11 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 h27-20020a50cddb000000b004c19f1891fasm264876edj.59.2023.03.30.12.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 12:24:10 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 38E96A22D4A; Thu, 30 Mar 2023 21:24:10 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org,
 Stanislav Fomichev <sdf@google.com>
In-Reply-To: <168019602958.3557870.9960387532660882277.stgit@firesoul>
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 30 Mar 2023 21:24:10 +0200
Message-ID: <87o7oam49x.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680204260;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5Q7Cqh2aYfSsbcdWUid6l7wXUxa42i3KSmjjSjh/4xw=;
 b=Vr0/5H9UxT+ZowAzQWhwkCZwMrnC2rEVMFhPKcAsYy7zuUx6jTW5Amf2IjgnYC4CKbiKEH
 2vJxcI3cnPwu5utbzZhxs8/xr/FBYCSC2tGGzxHMRQJ3ryF2cPoB/aU2bpBoq+9ixAp6Tr
 uEqUljCpV4wWfbP1dHj1OYVGfCvGmmI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Vr0/5H9U
Subject: Re: [Intel-wired-lan] [xdp-hints] [PATCH bpf RFC-V3 0/5] XDP-hints:
 API change for RX-hash kfunc bpf_xdp_metadata_rx_hash
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmVzcGVyIERhbmdhYXJkIEJyb3VlciA8YnJvdWVyQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gTm90
aWNlIHRhcmdldGVkIDYuMy1yYyBrZXJuZWwgdmlhIGJwZiBnaXQgdHJlZS4KPgo+IEN1cnJlbnQg
QVBJIGZvciBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goKSByZXR1cm5zIHRoZSByYXcgUlNTIGhh
c2ggdmFsdWUsCj4gYnV0IGRvZXNuJ3QgcHJvdmlkZSBpbmZvcm1hdGlvbiBvbiB0aGUgUlNTIGhh
c2ggdHlwZSAocGFydCBvZiA2LjMtcmMpLgo+Cj4gVGhpcyBwYXRjaHNldCBwcm9wb3NhbCBpcyB0
byBjaGFuZ2UgdGhlIGZ1bmN0aW9uIGNhbGwgc2lnbmF0dXJlIHZpYSBhZGRpbmcKPiBhIHBvaW50
ZXIgdmFsdWUgYXJndW1lbnQgZm9yIHByb3ZpZGUgdGhlIFJTUyBoYXNoIHR5cGUuCj4KPiBBbHRl
cm5hdGl2ZWx5IHdlIGRpc2FibGUgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgaW4gNi4zLXJj
LCBhbmQgaGF2ZQo+IG1vcmUgdGltZSB0byBuaXRwaWNrIHRoZSBSU1MgaGFzaC10eXBlIGJpdHMu
CgpMR1RNOyBmb3IgdGhlIHNlcmllczoKCkFja2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gPHRva2VAcmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
