Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D802951981
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 12:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA43D80F8A;
	Wed, 14 Aug 2024 10:57:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rnGo9If-vP_i; Wed, 14 Aug 2024 10:57:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 993A380F93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723633070;
	bh=QAq5u/JP31bpQ9NdJr4tGzYpxOYv91e3r5Dn13zuFrU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CKS+z4C/16EikkhkDqoUDG/1/MvAdJNujS5h1bXWaW6j1fdHh/eIZ2t9hj40d2Y2p
	 svSQ1oiCQIe+JAOxOz3HmkFdK0+jOcWyC56dD8D4PL5WpjT3lxy6kBzBTJ8UeG8A8C
	 /sEf6exACxwhGyhWcZRHm3XvtIWEPsbVU41la4OS0167aOKSCB78eqOHvweA+Igr+9
	 PV64oFinJfmjnNYB5+bmcC8hzw2eQdJ7D9GDvF3pwumuyvysYkl1joihFQWbrf9M1h
	 SflS1epStg7+RA9GJeD/0Bhi86tevSFSqUu3Lc9vgeE6S8NtYh7Gr1mmbb4mt3wEUS
	 pzNtrC0wtqFqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 993A380F93;
	Wed, 14 Aug 2024 10:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 453621BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 10:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3198D40451
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 10:57:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8o0MkkaiaK4m for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 10:57:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C6EC8401FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6EC8401FE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6EC8401FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 10:57:46 +0000 (UTC)
X-CSE-ConnectionGUID: 996TqVfzQDW9NwGghTllmA==
X-CSE-MsgGUID: LYrXsPgWThqFKWCaE0R0wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32515984"
X-IronPort-AV: E=Sophos;i="6.09,145,1716274800"; d="scan'208";a="32515984"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 03:57:46 -0700
X-CSE-ConnectionGUID: yeUuT0TMRLO5IZDkaD48nA==
X-CSE-MsgGUID: wbHcN2QvTYiOKujl6yEoeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,145,1716274800"; d="scan'208";a="63122784"
Received: from dosuchow-mobl2.ger.corp.intel.com (HELO [10.245.130.66])
 ([10.245.130.66])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 03:57:44 -0700
Message-ID: <cc23dde3-8298-4cd6-b2cd-7e9d7bb32d65@linux.intel.com>
Date: Wed, 14 Aug 2024 12:57:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240812125009.62635-1-dawid.osuchowski@linux.intel.com>
 <ZrtIO2durwKP7ue/@boxer>
 <1c0db79b-dd8c-4ab8-b108-42395a737836@linux.intel.com>
 <ZruzBXwsFswL3lUe@boxer>
Content-Language: pl
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <ZruzBXwsFswL3lUe@boxer>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723633067; x=1755169067;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rXmc4Uju7pgtTw9AWSVXgPr1M+XqA6OswcWxro12Qn4=;
 b=ai3Ac2m4PXUBG8KKYCl4+fx+zTtI9uM5C4wo+F5Xvd4GYyejsh75j9HX
 CsSs6TvE5c3etTPrQvVcYFsr6s5QmLfjv8nvDbAttToBK/UTOAQBovlte
 u4P/bFsr5nRWf+BqY6YExLci6f+5imtH2b9wfVnpPWAt/YsMSc/MtaPyj
 DidT26jVv85r3M+xrbyeaprtyWQV5uIEPWdNHN+mUqkTKKltPGvyiuCgp
 BR+CNURbKU4kL7NPAKYV3ng2uvMt0xsLyMttdcczXZtXhcbII4oOrfnx5
 ugiIfwinvegwYixfxM5vjcChYlKNMtjxnr4QmEcVpw2Id83+tPDrcg763
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ai3Ac2m4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: netdev@vger.kernel.org,
 Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>,
 intel-wired-lan@lists.osuosl.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13.08.2024 21:24, Maciej Fijalkowski wrote:
> On Tue, Aug 13, 2024 at 05:31:37PM +0200, Dawid Osuchowski wrote:
>> On 13.08.2024 13:49, Maciej Fijalkowski wrote:
>>> What about other intel drivers tho?
>>
>> I have not performed detailed analysis of other intel ethernet drivers in
>> this regard, but it is surely a topic worth investigating.
> 
> If you could take some action upon this then it would be great. I'm always
> hesitating with providing the review tag against a change that already
> contains few of them, but given that I dedicated some time to look into
> that:
> 
I got a valid concern from Kalesh (CCd) on the v1 thread 
(https://lore.kernel.org/netdev/CAH-L+nOFqs-K5YzfrfmpRHbhDGM-+1ahhWh4NXATX1FqZiPVLQ@mail.gmail.com/) 
about the attaching only if link is up.

On 14.08.2024 05:19, Kalesh Anakkur Purayil wrote:
 > [Kalesh] Is there any reason to attach back the netdev only if link is
 > up? IMO, you should attach the device back irrespective of physical
 > link status. In ice_prepare_for_reset(), you are detaching the device
 > unconditionally.
 >
 > I may be missing something here.

I agree with his suggestion to do the netif_device_attach() irrespective 
of link being up. Should I sent a v3 with the change? I have already 
tested that locally and it seems to fix the reported issue with NULL 
pointer dereference as well.

--Dawid

> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
>>
>> --Dawid


