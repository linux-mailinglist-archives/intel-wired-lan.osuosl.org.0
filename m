Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 548F2B15287
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jul 2025 20:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FC44610EA;
	Tue, 29 Jul 2025 18:15:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 54uQ3yUTa05b; Tue, 29 Jul 2025 18:15:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAACB610C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753812937;
	bh=0RXcBNh4+O3HiRyQXj8rk1CgupflqF5nLPTGPGDhtIE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1a2SK7zSJO/r12FY/kh0d5nwoDjaw7sAeQLoXZWvwKRo7+BfRO13TzsbAxL7t3nRe
	 AraUrzdvnOzKa8wNTpYJjIoHrWELrS7HZkHgjN6rL/KkBmRmIn+lPwGICbrne0hi0G
	 Mx20rPcKMk8b2jEP11q4ou6lrCe405dpSMnIldJ91p2WhE3hiv96HTepIdeT9Xo8z2
	 ev+WrBU5eJmHy2d+JMYmqu+qjogZ79bwttttJiOrRTgd7i0cXecl2zjIXqU9fxoQ3U
	 2cvNJ4sRK2IT2jhXk7BtYg2Osz1jjFg/6pn5g8GVB+EeeU6SxLlOimzFF1vc5fPJoN
	 0k/Un8UjeKfSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAACB610C6;
	Tue, 29 Jul 2025 18:15:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10326184
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 18:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01D4B41334
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 18:15:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_INcjL9JA-v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jul 2025 18:15:36 +0000 (UTC)
X-Greylist: delayed 444 seconds by postgrey-1.37 at util1-new.osuosl.org;
 Tue, 29 Jul 2025 18:15:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 04A90415BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04A90415BF
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::aa; helo=out-170.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com
 [IPv6:2001:41d0:203:375::aa])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04A90415BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 18:15:34 +0000 (UTC)
Message-ID: <424e38be-127d-49d8-98bf-1b4a2075d710@linux.dev>
Date: Tue, 29 Jul 2025 19:07:59 +0100
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
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
 <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
 <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1753812483;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0RXcBNh4+O3HiRyQXj8rk1CgupflqF5nLPTGPGDhtIE=;
 b=hpmvJceywDT/SQIXUrU9EbPkm5r68aZOcQIH86PxFvKAxSps45XroPkwkRWanNlGkmcRQI
 zR04Kn9btiL5koBgZj6LYU3IsWnHqdy3PFptZz5QPIoX4uavb+pXaJKKZiR8LrH6mjL8KV
 UNYhgNsfF4Qvl+QMicVMK4WrvxPRgmE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=hpmvJcey
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

On 29/07/2025 18:31, Andrew Lunn wrote:
>> The only one bin will have negative value is the one to signal the end
>> of the list of the bins, which is not actually put into netlink message.
>> It actually better to change spec to have unsigned values, I believe.
> 
> Can any of these NICs send runt packets? Can any send packets without
> an ethernet header and FCS?
> 
> Seems to me, the bin (0,0) is meaningless, so can could be considered
> the end marker. You then have unsigned everywhere, keeping it KISS.

I had to revisit the 802.3df-2024, and it looks like you are right:
"FEC_codeword_error_bin_i, where i=1 to 15, are optional 32-bit
counters. While align_status is true, for each codeword received with
exactly i correctable 10-bit symbols"

That means bin (0,0) doesn't exist according to standard, so we can use
it as a marker even though some vendors provide this bin as part of
histogram.

Thanks for the feedback!
