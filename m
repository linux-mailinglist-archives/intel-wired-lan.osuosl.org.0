Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595BB783A42
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 09:02:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA9264056D;
	Tue, 22 Aug 2023 07:02:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA9264056D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692687744;
	bh=DzK+dNZdpmGKgS+MrM40YWXDKt7INCdZA5ps6ue12GI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j36SWYT78RneLHnSIUQHRdqC6A6Au9Qlhv3F6yKqd3xQf5hug1LbDOSp0+vc8w4AL
	 ratd9wTUfgYSCapBGwJJTSUHM/ygU/peH24PzOqjT/G4RpzWx9kuDWUT8tPBKuqo6m
	 O98BE2iJwTpfybSWGK8stOS4u6ctwTLtcUN4+TPhHFyf2+ODEaMqFkQNofhL8/BiMh
	 K8uUATO+gygr8HiDGwrSPZVPQtnORzkaq5c5VvR9WTQAye8cXt4rxNzXzyoU+nR3fr
	 +CYLnZV5MlU3NOPV1CiW8lAYKD7+Yy6Nsvq5CbfVCu4EEgxJVmEe+VuLiy3VbQ7tPx
	 UXM/WK6qKMWwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YI3PhAiglzAU; Tue, 22 Aug 2023 07:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8820B4035D;
	Tue, 22 Aug 2023 07:02:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8820B4035D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 532421BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 07:02:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2042761147
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 07:02:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2042761147
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MfKXtfBbjBuP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 07:02:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5111D60B16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 07:02:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5111D60B16
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 213D662A66;
 Tue, 22 Aug 2023 07:02:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9DAEC433C8;
 Tue, 22 Aug 2023 07:02:13 +0000 (UTC)
Date: Tue, 22 Aug 2023 09:02:11 +0200
From: Simon Horman <horms@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230822070211.GH2711035@kernel.org>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
 <20230817141746.18726-2-karol.kolacinski@intel.com>
 <20230819115249.GP22185@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230819115249.GP22185@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692687735;
 bh=Slg9Rrck55ui9hK/Yr9pb9KndYPiVtpXtFsYx8Md7eU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tLv3XsTe9n70+2i29n0J4WnUnPgHaK2jLFfOfAPpCLgu/vDkIfhHXe3SooXQtnOt/
 uNsLQT6RJCWFosyl1yAaKLFMkz5tk49b+iWlcNDP95Fv7nPMUMJUDi8gpYkoYvNSSx
 361QcQa6zJsJrxUfcW+nv+4ncXx0oMuu5jGKw5obziOvIzY8P3lbaXTLYofwtW1zE1
 PuW9BDwWRrLv+u2/C3O/LmdJUhU8nQHbkkG2jbCznrj5eJsdEPbKD1GbU6R5Z91108
 eiyXnWcq5IeTG7jK/u6aWjHb5oyOUUMsugfM64DwVq/12sRletmzE1a+DeMmJ3bYpG
 h/5qmsoh8s5WQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tLv3XsTe
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/9] ice: use
 ice_pf_src_tmr_owned where available
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBBdWcgMTksIDIwMjMgYXQgMDI6NTI6NDlQTSArMDMwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOgo+IE9uIFRodSwgQXVnIDE3LCAyMDIzIGF0IDA0OjE3OjM4UE0gKzAyMDAsIEthcm9s
IEtvbGFjaW5za2kgd3JvdGU6Cj4gPiBUaGUgaWNlX3BmX3NyY190bXJfb3duZWQoKSBtYWNybyBl
eGlzdHMgdG8gY2hlY2sgdGhlIGZ1bmN0aW9uIGNhcGFiaWxpdHkKPiA+IGJpdCBpbmRpY2F0aW5n
IGlmIHRoZSBjdXJyZW50IGZ1bmN0aW9uIG93bnMgdGhlIFBUUCBoYXJkd2FyZSBjbG9jay4KPiAK
PiBUaGlzIGlzIGZpcnN0IHBhdGNoIGluIHRoZSBzZXJpZXMsIGJ1dCBJIGNhbid0IGZpbmQgbWVu
dGlvbmVkIG1hY3JvLgo+IE15IG5ldC1uZXh0IGlzIGJhc2VkIG9uIDViMGExNDE0ZTBiMCAoIk1l
cmdlIGJyYW5jaCAnc21jLWZlYXR1cmVzJyIpCj4g4p6cICBrZXJuZWwgZ2l0OihuZXQtbmV4dCkg
Z2l0IGdyZXAgaWNlX3BmX3NyY190bXJfb3duZWQKPiBzaG93cyBub3RoaW5nLgo+IAo+IE9uIHdo
aWNoIGJyYW5jaCBpcyBpdCBiYXNlZD8KCkhpIExlb24sCgpNeSBhc3N1bXB0aW9uIGlzIHRoYXQg
aXQgaXMgYmFzZWQgb24gdGhlIGRldi1xdWV1ZSBicmFuY2ggb2YKaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG5ndXkvbmV4dC1xdWV1ZS5naXQKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
