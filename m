Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4AA9CFA37
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 23:40:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5F3860E2A;
	Fri, 15 Nov 2024 22:40:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9VJk42dE4iWu; Fri, 15 Nov 2024 22:40:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D597605D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731710411;
	bh=+Ek8GZMqSIHsbViNoOmI/afu8qDdzMVOCvqTdcyOFGw=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w6uYJZY+++CJje9pqRjYdjGiodz8bm7FtUM0s5fZbms1fFXf01kXUBi+kbaptrkFj
	 6ymGlu0b5x/9PY3ghzzVXPpKBXZVTspi3+ty1/rFLSHkEfRDcWoJYwogotj05C6Mke
	 OjpOJRY4Eo+Ny+HBWoQxGtqOIGG1rBK5ChXVivfVCx1BkSi8qkaQyzP7TwaZI9oI3d
	 L6cBdjVKrnHenrancLpvfJG/8Vboqso16zoRqB9hjagwHH2nH6PFIuefOplJf3PpXe
	 sJdmJ+7B84JR1gPPMGSjohzwFtSXAIEKUyQ4d94oANrMpdpQ6cQ8N3I0rAYL2K8icQ
	 keeQdZx9dl+ow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D597605D7;
	Fri, 15 Nov 2024 22:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6954427DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 18:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57D5F80AC4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 18:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9qoZE4ScrYVz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 18:54:34 +0000 (UTC)
X-Greylist: delayed 470 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 15 Nov 2024 18:54:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3F512809F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F512809F6
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b4; helo=out-180.mta1.migadu.com;
 envelope-from=jesse.brandeburg@linux.dev; receiver=<UNKNOWN> 
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b4])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F512809F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 18:54:34 +0000 (UTC)
Message-ID: <45ce4333-57da-4c32-ad06-c368d90b1328@linux.dev>
Date: Fri, 15 Nov 2024 10:46:33 -0800
MIME-Version: 1.0
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "jbrandeb@kernel.org" <jbrandeb@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20241114000105.703740-1-jbrandeb@kernel.org>
 <IA1PR11MB619459AFADE5BB3A515C0577DD5B2@IA1PR11MB6194.namprd11.prod.outlook.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Jesse Brandeburg <jesse.brandeburg@linux.dev>
In-Reply-To: <IA1PR11MB619459AFADE5BB3A515C0577DD5B2@IA1PR11MB6194.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Fri, 15 Nov 2024 22:40:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1731696401;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+Ek8GZMqSIHsbViNoOmI/afu8qDdzMVOCvqTdcyOFGw=;
 b=a3aSdSCBDEfbuHo20XXAjfSzxgH0naWNRG5aRe8DOIKWSvHNMhTJRRdHbO/i0Ih3akEBES
 LOUEAX2eR42bRGlkJTruanZCRku7uKChPbOwJVtwEecYMmTzBh6v/InGWZ0nL9oALBozlR
 DRlAZ9uCJpzBKW6x5XC4Cr9bsa+VybQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=a3aSdSCB
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: do not reserve resources
 for RDMA when disabled
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

On 11/14/24 10:06 AM, Ertman, David M wrote:
>>   	case ICE_AQC_CAPS_RDMA:
>> -		caps->rdma = (number == 1);
>> +		if (IS_ENABLED(CONFIG_INFINIBAND_IRDMA))
>> +			caps->rdma = (number == 1);
>>   		ice_debug(hw, ICE_DBG_INIT, "%s: rdma = %d\n", prefix,
> 
> The HW caps struct should always accurately reflect the capabilities of the HW being probed.  Since this

why must it accurately reflect the capability of the hardware? The 
driver state and capability is a reflection of the combination of both, 
so I'm not sure what the point of your statement.

> is a kernel configuration (i.e. software) consideration, the more appropriate approach would be to control
> the PF flag "ICE_FLAG_RDMA_ENA" based on the kernel CONFIG setting.

I started making the changes you suggested, but the ICE_FLAG_RDMA_ENA is 
blindly set by the LAG code, if the cap.rdma is enabled. see 
ice_set_rdma_cap(). This means the disable won't stick.

Unless I'm misunderstanding something, ICE_FLAG_RDMA_ENA is used both as 
a gate and as a state, which is a design issue. This leaves no choice 
but to implement the way I did in this v1 patch. Do you see any other 
option to make a simple change that is safe for backporting to stable?

Thanks,
Jesse
