Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54117874549
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 01:48:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCE73404F1;
	Thu,  7 Mar 2024 00:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TeCfwxPQKr5l; Thu,  7 Mar 2024 00:48:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F101040475
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709772494;
	bh=5BVrUIvBfOEk6nFXkFrEkJGrcbLKTx3N+QLOz2Ii6fA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t9eyIYCM+II2qcCF5dVy5rx+YRB2IYRTo1TeVAK6mPMDVi+I+ssZbM2MPF7NMHV9a
	 wJPt+8HqkooWXNBqakdrPR5eFBCPepnpQ/OZJTN0m4owVgZWzsT6VqsZq6kzo0xrE/
	 MORVii4IbbjogDZzxCrh2epq//PbmgqEA5+6Gdj04s428FUJbcE0lKvJf1zKqJ5MLh
	 WMY1jx1avkkBjNE74iNAneH9PZHmuprB4Qq7jusxwZolS3ThkxbJdepEw7dNNq2+cY
	 GRetOqaLNMzT6ltoGD2jsiWcYY5/tGRuZ/mrTYCR4XuT5IWAmbQfB9BbFCZ/tlMcg2
	 d6DdwABxlLoDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F101040475;
	Thu,  7 Mar 2024 00:48:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 158B21BF98E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 00:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00C8840475
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 00:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9XRN-4m2-zGo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 00:48:11 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 07 Mar 2024 00:48:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44F84400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44F84400CB
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.89.44.33;
 helo=omta34.uswest2.a.cloudfilter.net; envelope-from=gustavo@embeddedor.com;
 receiver=<UNKNOWN> 
Received: from omta34.uswest2.a.cloudfilter.net
 (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44F84400CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 00:48:11 +0000 (UTC)
Received: from eig-obgw-6010a.ext.cloudfilter.net ([10.0.30.248])
 by cmsmtp with ESMTPS
 id hyDQrml6XHXmAi1olrWIXQ; Thu, 07 Mar 2024 00:41:03 +0000
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with ESMTPS
 id i1okrmQqKQmOqi1okrV6Kz; Thu, 07 Mar 2024 00:41:02 +0000
X-Authority-Analysis: v=2.4 cv=DaURqOtW c=1 sm=1 tr=0 ts=65e90d1e
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=VhncohosazJxI00KdYJ/5A==:17
 a=IkcTkHD0fZMA:10 a=K6JAEmCyrfEA:10 a=wYkD_t78qR0A:10 a=cm27Pg_UAAAA:8
 a=VwQbUJbxAAAA:8 a=vznqr7mipjY0YkA7v-cA:9 a=QEXdDO2ut3YA:10
 a=xmb-EsYY8bH0VWELuYED:22 a=AjGcO6oz07-iQ99wixmX:22
Received: from [201.172.172.225] (port=38044 helo=[192.168.15.10])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.96.2)
 (envelope-from <gustavo@embeddedor.com>) id 1ri1oj-003fVW-27;
 Wed, 06 Mar 2024 18:41:01 -0600
Message-ID: <22b99862-5889-4acb-96e5-7552c06e362b@embeddedor.com>
Date: Wed, 6 Mar 2024 18:40:59 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240306235128.it.933-kees@kernel.org>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <20240306235128.it.933-kees@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.172.172.225
X-Source-L: No
X-Exim-ID: 1ri1oj-003fVW-27
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.10]) [201.172.172.225]:38044
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 5
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfN5O70Vnhym5jxvRXm9YBmL8QUutNu9MndKS+g0kNpQs1VnvkLQhEXO1SJHtToxTuXptcTO60BmI1GVKBHHYd2rK/RiMTd697e7/nMu0uzunyiICU2SP
 ZMLeR5pOUQBupR7KbgWJkCtkqervxpjlYTwtHnDGO0Ex3bFp/KsrHUJ28t7Q+wRXnIy6xyonENQRqfSPbq2quNtKpJYoUR6mx0zgKkaeD0gI/WzfWwsDo05l
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5BVrUIvBfOEk6nFXkFrEkJGrcbLKTx3N+QLOz2Ii6fA=; b=KU46e9cxXRHxCpm2jlbl/bYAGv
 3QO4r2zEV4/MVLI/+DgJSKHhOuGD6putlxEfPmr3mE+S72URrEbonRTC5l4C6arewij3hE0bDSYcr
 4fICckYkdF4Q+Kpk01lNNNSvoot+pNWMwiY5D1Pqv6N0imQAeYgbUXUkAgIBrjW62oGjouS4oAF2h
 MrWsRiT5oqzyi9wsKutmBFsyQ1V3eBHiFWbqi3qcfloky9O81heGE8bRHZG6b+9PuNTJMCHOuMDa/
 qre1mj//RwuYb4dnyBSx4HOBF03/5MkX4uimbVSS+FvdB2WI55CEp2IFgRS3zxNmMmBTCfOTALUKv
 b1fCumUg==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=embeddedor.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=embeddedor.com header.i=@embeddedor.com
 header.a=rsa-sha256 header.s=default header.b=KU46e9cx
Subject: Re: [Intel-wired-lan] [PATCH v2] overflow: Change DEFINE_FLEX to
 take __counted_by member
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
Cc: intel-wired-lan@lists.osuosl.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/6/24 17:51, Kees Cook wrote:
> The norm should be flexible array structures with __counted_by
> annotations, so DEFINE_FLEX() is updated to expect that. Rename
> the non-annotated version to DEFINE_RAW_FLEX(), and update the
> few existing users.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

LGTM:

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks!
-- 
Gustavo
