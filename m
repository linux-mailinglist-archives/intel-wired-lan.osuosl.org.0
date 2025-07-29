Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F940B150DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jul 2025 18:07:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F716410B4;
	Tue, 29 Jul 2025 16:07:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PINH0rzXgDGn; Tue, 29 Jul 2025 16:07:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B57CD40AF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753805255;
	bh=AojRXkOOFjA2N/3VnYTbAXR8Q5lK8XT727nyCzSJxAg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nf0eCM/mDE2iipMA5JJYqzlH7hHvtT4QX9gvXtkWLfY28d15dwm6mpZRiUExsLAZH
	 Pw8EKlZPuhI5Roh/g/z8h0vCYjJBehFsFpk5gp2UV+U4eAfFyq4fgmdcksfg0R7e+9
	 sKzZHDJwV4AgTBT/Lh6Nf5/iTw0YVN4eISKuX8jeNFzfCIhSDxZnHjEt/3LVWoU8fQ
	 6wKNDVU8HAzUeLJq9/O/aHZD5LlRLAo5X4LUFJobfd9s0WSsD1GG+MJ7xeNnxLp2XG
	 DQb3DLAipAHoXt3p/E3Hey6VmdYbJIZ6oW0fxonxUj89PBdnfAmknbB8g6kuAPQvib
	 2grG3piP9Crqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B57CD40AF3;
	Tue, 29 Jul 2025 16:07:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 47C291BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E12181137
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:07:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5hrqoRW4SJk2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jul 2025 16:07:33 +0000 (UTC)
X-Greylist: delayed 380 seconds by postgrey-1.37 at util1-new.osuosl.org;
 Tue, 29 Jul 2025 16:07:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8338E81120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8338E81120
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::ab; helo=out-171.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::ab])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8338E81120
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:07:32 +0000 (UTC)
Message-ID: <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
Date: Tue, 29 Jul 2025 17:01:06 +0100
MIME-Version: 1.0
To: Andrew Lunn <andrew@lunn.ch>
Cc: Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1753804868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AojRXkOOFjA2N/3VnYTbAXR8Q5lK8XT727nyCzSJxAg=;
 b=NyG2hHb5rIWP/mgK34lv6MFiSQFSSkv1SDG/UzC3R3zDbkdKl+7OClSATXiKAlhwpmX1pT
 18n4YBWsvGXxAaznHbrvPMPXhQ0T4hzMelJUv5jNthW54oAJ3gNE2xtnqfiUz8qnz9RlaC
 q01oatMv2xEv8kauF8+LWXyuxpvVAbM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=NyG2hHb5
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On 29/07/2025 14:48, Andrew Lunn wrote:
>> +        name: fec-hist-bin-low
>> +        type: s32
> 
> Signed 32 bit
> 
>> +struct ethtool_fec_hist_range {
>> +	s16 low;
> 
> Signed 16 bit.
> 
>> +		if (nla_put_u32(skb, ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_LOW,
>> +				ranges[i].low) ||
> 
> Unsigned 32 bit.
> 
> Could we have some consistency with the types.

Yeah, it looks a bit messy. AFAIK, any type of integer less than 32 bits
will be extended to 32 bits anyway, so I believe it's ok to keep smaller
memory footprint for the histogram definition in the driver but still 
use s32 as netlink attr type. I'll change the code to use nla_put_s32()
to keep sign info.

Does it look OK?


> 
> 	Andrew

