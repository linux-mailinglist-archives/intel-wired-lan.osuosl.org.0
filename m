Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 225EC80233A
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Dec 2023 12:41:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02D4560F0E;
	Sun,  3 Dec 2023 11:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02D4560F0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701603685;
	bh=Shzb4LvbhxSHK4EWk03hqCRoIdSlTiKU+didGEZNFng=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8r5KBa5VzYSkaUo5Vi5OTsIidmzkjbJvoklqp334PrVSeDFf1bf/cY2WdbKwTzHAi
	 27NJ5AKovRDJHcjBzMihOX62/OwVA8z4wJceNnZ09UtdSj2zETQdrVCNBW/QqKg50V
	 1oXQYOvk1ZEayr4ZksmtUu1AHpzLabDXsfPgcSNdAFwOLiJ7v+7o9YAc5y9CZAdidE
	 +6WbMt7a3OpiLQ7FjtWN9BpVEMjRarf8ixb2HEbSeYCCjQ722GHXlGuzdXP47+GTZo
	 qVSENMW/jQ75VkFzhZqMJmO+4bIMzIkIDLODA9sVfjBGpPHsorx/QqqFSLdathh6mr
	 LUsMNBLuSzHZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2X0uH5VZ4m0N; Sun,  3 Dec 2023 11:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04A7E60EC0;
	Sun,  3 Dec 2023 11:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04A7E60EC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 742D51BF36E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 11:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4ACEF4098B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 11:41:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4ACEF4098B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lyX5R9u9oHYv for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Dec 2023 11:41:17 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 730CA4098A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Dec 2023 11:41:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 730CA4098A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8A663CE0B04;
 Sun,  3 Dec 2023 11:41:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A61E1C433CA;
 Sun,  3 Dec 2023 11:41:09 +0000 (UTC)
Date: Sun, 3 Dec 2023 11:41:06 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231203114106.GF50400@kernel.org>
References: <20231124150343.81520-1-ivecera@redhat.com>
 <20231124150343.81520-2-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124150343.81520-2-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701603672;
 bh=OtdrrUcI446zB3hxjmwSCcBAkj90yqeSrqfZyF8qy48=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CFFBrH4SEi0MldZ/NirkRDs9gdP61dFBFMSHJrl24HO7MpEZ5hYwfNYSYgxvDUYJv
 lfEPwAWMzLKrWQ9NmiPy6zbjhcclRi8X5r9Wf3Ezu6f+eLazpk7xuHqwNFTkHRJVhw
 ZtdwoW4BzUA4rAk8USaAeg+g8EPxdrVcK2NACkmioYme+KUp1GpepZkFNYjfExe3iF
 o0AM/RIEpu1yUcGsDOAcPSUDC2bpSseQRSU3GBd/Sjp1YR+WzeDRo5IMhfLO52gbVE
 Jlew+uy0TaY6QVe/leeqOB2wuqpFvxO0K4C9NxTjRzTF8SsA/+QvbaKZuFQ+TZMG2j
 amGSUhiRftWRA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CFFBrH4S
Subject: Re: [Intel-wired-lan] [PATCH v5 1/5] i40e: Use existing helper to
 find flow director VSI
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 24, 2023 at 04:03:39PM +0100, Ivan Vecera wrote:
> Use existing i40e_find_vsi_by_type() to find a VSI
> associated with flow director.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
