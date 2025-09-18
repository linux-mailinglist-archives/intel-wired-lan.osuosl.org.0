Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84681B8541A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 16:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69D4A61220;
	Thu, 18 Sep 2025 14:33:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4wkQJq_HngrQ; Thu, 18 Sep 2025 14:33:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE395608D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758205983;
	bh=gvzJjB6JkxNqyArsRR8uweDSR1veOY42ofn4kfEVgpE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q8/DxwuQAmhPJzi+OTpZ83edqEGE+NkVLa+RAEog27QuDxYHxUMn//EixdqWihsco
	 8I67nqNA7hxHfblOcuxTE4FHkUjCiDBafvgwx3iOvVRQ427gWfVw/5g3zkPfRI+4RB
	 NS7IYsYiyibpBEgpsHAcOBlhkaD+cekPbhP3YIGzYq3S+wPStHSBJxlGSqZ5A32Rva
	 5D8Z/hy4Zc+HYFRt1H72TYCXE/hwd+sQLb+1Bru48hbFbIvsLITucOqHe23xmVWHDR
	 0wgREFt/r9Nmug7ugkW0045D0FTVhPXwvW8W+aN5Hcx27NOMZuCGy/heU6JyR1pXgj
	 /s3f2rOOQe5bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE395608D1;
	Thu, 18 Sep 2025 14:33:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EC3D279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:33:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 157EF60794
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:33:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SyBfn0bKhKPz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 14:33:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b2; helo=out-178.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AD23B60776
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD23B60776
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b2])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD23B60776
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:33:00 +0000 (UTC)
Message-ID: <28315831-21f7-49e0-b445-b3df0cb123e0@linux.dev>
Date: Thu, 18 Sep 2025 15:32:51 +0100
MIME-Version: 1.0
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Carolina Jubran
 <cjubran@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-5-vadim.fedorenko@linux.dev>
 <20250917174837.5ea2d864@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250917174837.5ea2d864@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758205976;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gvzJjB6JkxNqyArsRR8uweDSR1veOY42ofn4kfEVgpE=;
 b=IW8XJPNY9yegNVOb6F57e3qRIOl9I107I4UXqUAFYXCXdiu7kMtxhPZRukjL+2LxJ2Io33
 GUfNeAtROKpKw0XFtfy5NCp/FAK98g6fkXIoqsE013npEwcY8Vs0rn8DRZ3fyVpMZPzK+o
 tCXzhdlamWaJAiA6Wr8GC8nLjQ7hg6M=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=IW8XJPNY
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/4] net/mlx5e: Report
 RS-FEC histogram statistics via ethtool
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

On 18/09/2025 01:48, Jakub Kicinski wrote:
> On Tue, 16 Sep 2025 19:12:57 +0000 Vadim Fedorenko wrote:
>> +	for (int i = 0; i < num_of_bins; i++) {
> 
> brackets unnecessary
> 
> in the other patch you picked u8 for i, good to be consistent
> (int is better)
> 
>> +		hist->values[i].bin_value = MLX5_GET64(rs_histogram_cntrs,
>> +						       rs_histogram_cntrs,
>> +						       hist[i]);
> 
> could also be written as:
> 
> 		hist->values[i].bin_value =
> 			MLX5_GET64(rs_histogram_cntrs, rs_histogram_cntrs, hist[i]);

this doesn't actually fit into 80 chars (84 chars long)... unless we are
not too strict in the drivers..
