Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 430D7AE8598
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 16:07:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2A6B41970;
	Wed, 25 Jun 2025 14:07:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7qFPajGDbe9H; Wed, 25 Jun 2025 14:07:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7271741C57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750860423;
	bh=WPZdbXHxbn4kKW18nfEwKIWKWSen/JBn8Chb6xSN5cc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=82gM3lDmXnEpWqvCGfNstc70s0t8wk4t/XpIIznsRlE0ZmasTxufYpGjuX00L6PF5
	 cEbV1X6f+ibytNtzSLFjpa0bo++fo3p0BCpFmxg/BsR3X9AnpeeCVuFwdW3blfNJON
	 1c5aJ8k1YN2mgpWx6X/niw3wDS2AaQhfVG1++3Qe8w1hYlN/BDrtnD1KFBA7oS3E7n
	 H9oUMrZKrcL/PIb2lF8GHATetLEnxeBECvkMbELUpuj55chVS/NByotqfrUqkJdR2I
	 pyAasfXTC9VnoypzQ7AEwKCY22VFIlmHXu4Z6cyujxfCNYFcStV/WFBXP+Fcgz3uqr
	 gHn645MtBgCGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7271741C57;
	Wed, 25 Jun 2025 14:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DAEB154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 14:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6378483E02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 14:07:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jBNjL1iBVCfV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 14:07:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.152;
 helo=fhigh-a1-smtp.messagingengine.com; envelope-from=vlad@ursu.me;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 65BF883D46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65BF883D46
Received: from fhigh-a1-smtp.messagingengine.com
 (fhigh-a1-smtp.messagingengine.com [103.168.172.152])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65BF883D46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 14:07:00 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 401B81400073;
 Wed, 25 Jun 2025 10:06:59 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Wed, 25 Jun 2025 10:06:59 -0400
X-ME-Sender: <xms:gQJcaB6xf0CHDkF80P2QWckvogV-iOmhBqWOvr4GVncUtZ_9PwyVmQ>
 <xme:gQJcaO55HcOAODhdGZzDlDpEsRc_HH14FJxdzUXvvuMMYGW6m200WsTZT12FPle8J
 gZ9uOurMymZ2OBnjhU>
X-ME-Received: <xmr:gQJcaIcW4VH1ZvxRCvXsuzstrbqKhKGXXzEXtizf0mDqE0zNW0s-ABqPJ4aE46qozvIm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgddvvdeljecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpefkffggfgfuvfevfhfhjggtgfesthejredttddvjeenucfhrhhomhepgghlrgguucgf
 tffufgcuoehvlhgrugesuhhrshhurdhmvgeqnecuggftrfgrthhtvghrnhepueegkeetle
 efueffieevudffvdekhffhfffhhfdtgeekudetvdeghefhteeiffeknecuffhomhgrihhn
 pehinhhtvghlrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepvhhlrggusehurhhsuhdrmhgvpdhnsggprhgtphhtthhopeduvddpmhho
 uggvpehsmhhtphhouhhtpdhrtghpthhtohepjhgrtggvkhesjhgrtggvkhhkrdhinhhfoh
 dprhgtphhtthhopehhohhrmhhssehkvghrnhgvlhdrohhrghdprhgtphhtthhopegrnhht
 hhhonhihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehprhiivg
 hmhihslhgrfidrkhhithhsiigvlhesihhnthgvlhdrtghomhdprhgtphhtthhopegrnhgu
 rhgvfidonhgvthguvghvsehluhhnnhdrtghhpdhrtghpthhtohepuggrvhgvmhesuggrvh
 gvmhhlohhfthdrnhgvthdprhgtphhtthhopegvughumhgriigvthesghhoohhglhgvrdgt
 ohhmpdhrtghpthhtohepkhhusggrsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehprg
 gsvghnihesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:gQJcaKJNazL9AgkZZQr-bGQdOG1eZT1wjher2-l2F57PxNBIRB2ovA>
 <xmx:gQJcaFJeCymlECjZP5KOMk-7ZY7_xK6BR2xyGLDCakAgwQ-aobP9cw>
 <xmx:gQJcaDxxE0HJDM_YuGc84vj-7Y6sx8lL6Bmf_GQlpd_5hi4sJYyzyA>
 <xmx:gQJcaBKw8Apuu_3atUuVeP8Z2kBlqtH6hB0DX6j9ReE02kWZJ3uPdQ>
 <xmx:gwJcaPDYUNcXZ3KePhJI9uqrkwCXgb85Rn7ZaDPK5pEtLOVVrrsQMnrS>
Feedback-ID: i9ff147ff:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jun 2025 10:06:55 -0400 (EDT)
Message-ID: <eb418aae-c0d4-438f-9b3b-fcb870387b1a@ursu.me>
Date: Wed, 25 Jun 2025 17:06:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacek Kowalski <jacek@jacekk.info>, Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
 <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
 <20250624194237.GI1562@horms.kernel.org>
 <0407b67d-e63f-4a85-b3b4-1563335607dc@jacekk.info>
 <20250625094411.GM1562@horms.kernel.org>
 <613026c7-319c-480f-83da-ffc85faaf42b@jacekk.info>
Content-Language: en-US
From: Vlad URSU <vlad@ursu.me>
In-Reply-To: <613026c7-319c-480f-83da-ffc85faaf42b@jacekk.info>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursu.me; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1750860419;
 x=1750946819; bh=WPZdbXHxbn4kKW18nfEwKIWKWSen/JBn8Chb6xSN5cc=; b=
 kVr09qow2ZXe98BVTGdIRPz/KL5eoOuN5iA98vxfZzg+W+aEEHBpepFFYmU9Qb2l
 2jdF7BFLw/bqwWIODxhe+fgi5bzkeWYzzbvJ/a1sUCQE3uDwug2cTuJ9jrMlm0UF
 kdQLuCd0bDFrjrkEM8wb827B2PTsT1e6xOGSgHxxODc1rigJD2ACAuPyg8Vp8n6y
 bScnE887Tpwk6614/87ejA/3F4vlpofYIWS29IJeuBlUPizZmcpy6CcDF7SlediM
 RV627fb3n1z07dXzLCgu7XVcQuMUS8qk0UW0uuyuZPjBPQ2qEyRmVnqZ3PD8geyX
 eAqf86rhKeKO7PnetQe92Q==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1750860419; x=
 1750946819; bh=WPZdbXHxbn4kKW18nfEwKIWKWSen/JBn8Chb6xSN5cc=; b=C
 bkZ2iNfeSFl+56KTg+lZab8+hkz14VHKNZaLXQM/JEveQ1inBfNGugrRjRaGMS2K
 c2u/ZWV5fZmp/Wnfv8z0axuEuA+wZxru4jzBSUTLnJQH/pyyvRc3BL37b8GrHab3
 ulmAaql5jmL2nEl2YRZZ2acBDK1RQnU2n2bsNPyVtdVp9HBZadQbG30INHEAQcnl
 ZLDVm5/1YylwnLa+IOvv50xmP5ObLbfyVB2Zel4ONhEDdEJLIe0KfNhF6XlG7qfQ
 qaNca2xc/IPE1UwrLIOoJVfw6jeVUKFcWyh9GlJitN8POmHfmpKf/IneTPz5gh96
 w7xABc8lNyZ7qc6EgcpVg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=ursu.me
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=ursu.me header.i=@ursu.me
 header.a=rsa-sha256 header.s=fm1 header.b=kVr09qow; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=CbkZ2iNf
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On 25.06.2025 16:05, Jacek Kowalski wrote:
>>>>> +#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF
>>>>
>>>> Perhaps it is too long, but I liked Vlad's suggestion of naming this
>>>> NVM_CHECKSUM_WORD_FACTORY_DEFAULT.
> 
> So the proposals are:
> 
> 1. NVM_CHECKSUM_WORD_FACTORY_DEFAULT
> 2. NVM_CHECKSUM_FACTORY_DEFAULT
> 3. NVM_CHECKSUM_INVALID
> 4. NVM_CHECKSUM_MISSING
> 5. NVM_CHECKSUM_EMPTY
> 6. NVM_NO_CHECKSUM
> 
> Any other contenders?
> 

For reference, I called it "CHECKSUM_WORD" in my proposal because that's 
what it's refered to as in the intel documentation (section 10.3.2.2 - 
http://www.intel.com/content/dam/www/public/us/en/documents/datasheets/ethernet-connection-i219-datasheet.pdf)
