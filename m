Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C557B1E57E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 11:18:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42B3460B7C;
	Fri,  8 Aug 2025 09:18:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ea-vwt8ifdl8; Fri,  8 Aug 2025 09:18:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFF8B60B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754644699;
	bh=dIknzOznWLfxfZNoyqbgzo9u9I/PDg4nwXhzAfEF62M=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dToN+6SjsVWasLLb9qy1eFEg9T7KIlU8sc2sRF1pFN8ZJJeaZ+h/g0GZuQUt/nB8O
	 zIXzgZkbXeFf+iFFs4MQ17FCcgq6cpUXjaA0VrgaFGnjhKfRbiZKdEtX7Ul0azvm5B
	 PVP1KGmxboZ/j8LwRZKo/IBcNaAyTg9+G729HYtvSNF0xhjdVB0s16qmAw57hJSfRY
	 wgyCVsTRRElQf8fLVFf3MReyjk/gYgvNuzP5C/GWYYkui71djgfoYxWXxBTjHdVzhF
	 F1w6/PjAJoXcTLk15DV3el3UBCemMCqumD/QN2pwMWZo2IExmQ2HqWixFemhPSSbNz
	 v4OZw3l+L/O3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFF8B60B83;
	Fri,  8 Aug 2025 09:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 662F710A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 09:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4478360B42
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 09:18:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GWwwrX38Lzmx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 09:18:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8DEE060B67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DEE060B67
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DEE060B67
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 09:18:14 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af14c.dynamic.kabel-deutschland.de
 [95.90.241.76])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0D77F6028827A;
 Fri, 08 Aug 2025 11:17:57 +0200 (CEST)
Message-ID: <8e4ec57e-dc14-470c-b56e-9f594a7a8390@molgen.mpg.de>
Date: Fri, 8 Aug 2025 11:17:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>,
 Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>,
 Milena Olech <milena.olech@intel.com>
References: <20250724122736.3398010-1-grzegorz.nitka@intel.com>
 <dff2578f-2336-4384-a1c3-427fc92dc1f2@molgen.mpg.de>
 <IA1PR11MB62193480CBF232FDCB54111E9227A@IA1PR11MB6219.namprd11.prod.outlook.com>
 <IA1PR11MB6219A68EFD8E72E5298842A9922CA@IA1PR11MB6219.namprd11.prod.outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <IA1PR11MB6219A68EFD8E72E5298842A9922CA@IA1PR11MB6219.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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

Dear Grzegorz,


Am 07.08.25 um 10:35 schrieb Nitka, Grzegorz:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Nitka, Grzegorz
>> Sent: Thursday, July 31, 2025 5:36 PM

[…]

>> My responses in-line. I'm going to address your comments in v9.

Thank you for digging into this, and your replies. I am looking forward 
to v9.


Kind regards,

Paul
