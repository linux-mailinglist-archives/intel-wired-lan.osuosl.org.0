Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DDF950849
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 16:57:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FE2B81292;
	Tue, 13 Aug 2024 14:57:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LlBY7QuSemzk; Tue, 13 Aug 2024 14:57:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69D1E817AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723561064;
	bh=SEp3qwk4GT0xlQatDRuLHX4RJHy/o8pdyqFPySWqAS4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jg7moJHLJo0zEBFGzFrmacvszKIKQuIb9MJWiTV7uhs7lx3GvK9FW6d3s/XOscz1G
	 U8d7A35rmLfqR0fV6a8nrRiTcAiTfLbhbSmueWHTsG3l+oPL+KYkXJg2aUzEKtCvkR
	 9OBEm4mrFyrlmtO7gJ2QH4v0vJOaPRrGhPZiMJETlMTAl5kZQTATgqUUqQp9vFsn62
	 /T1YVF4Nhi670Omk1Q5KyjPz7TNE0Qsk7VtSkz/M9GzXwpQju6xhOEzgTKqVYZoXOe
	 oFaE7q28oPF17fLQ/78WFrMqRQEPh2IzjRhUdEHJsUtnbpoPtTLGzEZ+fnpgDo0hi8
	 ALtCeEClzQGyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69D1E817AB;
	Tue, 13 Aug 2024 14:57:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E15661BF42D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 04:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC55640420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 04:13:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R7o_5M5B0cR5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 04:13:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.156.173;
 helo=mx0b-0016f401.pphosted.com;
 envelope-from=prvs=595515a65d=rkannoth@marvell.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DABDE40025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DABDE40025
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DABDE40025
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 04:13:30 +0000 (UTC)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47CN03IS028173;
 Mon, 12 Aug 2024 21:13:00 -0700
Received: from dc6wp-exch02.marvell.com ([4.21.29.225])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 40yup38vta-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 12 Aug 2024 21:13:00 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.4; Mon, 12 Aug 2024 21:12:59 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.4 via Frontend
 Transport; Mon, 12 Aug 2024 21:12:59 -0700
Received: from maili.marvell.com (unknown [10.28.36.165])
 by maili.marvell.com (Postfix) with SMTP id EF7D43F704B;
 Mon, 12 Aug 2024 21:12:54 -0700 (PDT)
Date: Tue, 13 Aug 2024 09:42:53 +0530
From: Ratheesh Kannoth <rkannoth@marvell.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20240813041253.GA3072284@maili.marvell.com>
References: <20240810002302.2054816-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240810002302.2054816-1-vinicius.gomes@intel.com>
X-Proofpoint-ORIG-GUID: 8SkyDvNSPllJkWS5yqlAv2-2pAbWRIVY
X-Proofpoint-GUID: 8SkyDvNSPllJkWS5yqlAv2-2pAbWRIVY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-12_12,2024-08-12_02,2024-05-17_01
X-Mailman-Approved-At: Tue, 13 Aug 2024 14:57:41 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=pfpt0220; bh=SEp3qwk4GT0xlQatDRuLHX4RJ
 Hy/o8pdyqFPySWqAS4=; b=d7tPA2ao/7cLfAGdMrLQweuu0v3Y4xuVCcHniImw4
 VY5q4IR9Nl9F9f4bBPG5f5eDhRxk8LTwWe7FevuqYo9/cmLJHLVzyJQnubX2X41N
 i6r09TCNozL/4GQmCfpmz46cPZwkAuvXd+4FS4EtORaPGI6D+l9X3131Wanbl3X3
 MZtN8jf3gszCf9NTNcGhobsFZibQJhieaDZnDBq+TXzKnjIQicswh5dgQYvQVIcT
 vvAFlZFtOdhPBJtOHDMdN/SpoAyXr/r0JdbyouHPK0Jhd1le45N3x4tUtCyYrViu
 moAJOaZM4kPNA+CFJ0yyj9S714uro+fxsqWcAa2WBDyCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=pfpt0220 header.b=d7tPA2ao
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 kurt@linutronix.de, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 daiweili@gmail.com, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-08-10 at 05:53:02, Vinicius Costa Gomes (vinicius.gomes@intel.com) wrote:
> @@ -6960,31 +6960,48 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
>  static void igb_tsync_interrupt(struct igb_adapter *adapter)
>  {
>  	struct e1000_hw *hw = &adapter->hw;
> -	u32 tsicr = rd32(E1000_TSICR);
> +	u32 ack = 0, tsicr = rd32(E1000_TSICR);
nit: reverse xmas tree.
