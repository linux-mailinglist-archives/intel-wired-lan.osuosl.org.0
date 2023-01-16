Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E30966BA50
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jan 2023 10:28:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B8514089E;
	Mon, 16 Jan 2023 09:27:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B8514089E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673861279;
	bh=cZN1fc2d/Zrk31VXED+vXMh+2DJT8YVQZ6Xmiv68J2g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5N+qhJwulV3iEfqvkzHcBJUxKAx9HXvtV2gRd1uMybY7Mkd0QRCvaIfv9FzfHPv1G
	 A1WuZm/UWRe2EhUC8BwrPxr5SiFB5a1fmLXysU2YARs/SK0su23Vkn9hCdgQdePQkt
	 uaoRTus/j1Bkap0rAhnvsT7vrROo1boMkgaFIyLNEO5cn1DcMEnRc/sjfVUSrUi9R8
	 kLKU+R+bzFUE9eJzg5JFcMWtc0+Rn2NbTVJgPV9ehoRVQQEN67GOFCFfB5Z31xBn0N
	 P3dJgova0q/4ZR2merL1adTrlJlx3Lc+AePzOL21gkC8FIrS+9aUnSD2aIbdotP2Pg
	 W3qGCRLp7I5Rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-N5HH7vbYIZ; Mon, 16 Jan 2023 09:27:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41EFB40882;
	Mon, 16 Jan 2023 09:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41EFB40882
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCD8B1BF405
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 09:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 963D040882
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 09:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 963D040882
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gBDH33B6zajw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 09:27:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6281F40304
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6281F40304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 09:27:50 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae97d.dynamic.kabel-deutschland.de
 [95.90.233.125])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B104961CC457B;
 Mon, 16 Jan 2023 10:27:47 +0100 (CET)
Message-ID: <3fbda4db-2b07-201f-540f-e19069ab3b99@molgen.mpg.de>
Date: Mon, 16 Jan 2023 10:27:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Zhu Yanjun <yanjun.zhu@intel.com>
References: <20230116185131.63315-1-yanjun.zhu@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230116185131.63315-1-yanjun.zhu@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: Mention CEE DCBX in code
 comment
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
Cc: intel-wired-lan@lists.osuosl.org, Zhu Yanjun <yanjun.zhu@linux.dev>,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBaaHUsCgoKQW0gMTYuMDEuMjMgdW0gMTk6NTEgc2NocmllYiBaaHUgWWFuanVuOgoKW+KA
pl0KCllvdXIgcGF0Y2ggbWVzc2FnZSBhZ2FpbiBoYXMgYSBkYXRlIGZyb20gdGhlIGZ1dHVyZSwg
bWVzc2luZyB1cCBwZW9wbGXigJlzIAppbmJveCBzb3J0aW5nL29yZGVyaW5nLiBDb3VsZCB5b3Ug
cGxlYXNlIGZpeCB0aGF0PwoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
