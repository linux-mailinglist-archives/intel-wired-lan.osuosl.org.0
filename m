Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ADA939159
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26EA381004;
	Mon, 22 Jul 2024 15:06:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kzd6YEN5lDRl; Mon, 22 Jul 2024 15:06:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D06C80E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721660763;
	bh=7nhS573sWbk6zmb+twXhKHcSDQPo2l/o9ljalNFa5c4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Grj2TA82CbQqK4WaUtVyCb05xVQtfcF37+jKU3Zh4qTtycHEUdAjriR7WsSslJIaT
	 M5UJF8Sh9przju1WliseVHu7lYst6SDq5Pb4U89B5KXoG2wXtBpAxA0O9+sY5l2p7s
	 0+pMLkjSA15RSdgyRzDHTefHSK1BD8+vEFe8IZIwVfiP+GYMifrM1svm9Id62FIrgQ
	 TdlH5NiQV8IJwjbBaVychQnl2xMInjiURlZflt4VDZGRH2azkw9jbUenTqmaiQiOi7
	 4L8bSb1Fiu3M1B50oVj9oIdisvJybooesXPPK28Aeg51wMZiDu3bu0U5wIXK9g0fvf
	 9epbhRGj6J+pA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D06C80E4C;
	Mon, 22 Jul 2024 15:06:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8A501BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3D9680B68
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eg1BcpW2TtBq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:06:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 06CC980B3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06CC980B3A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06CC980B3A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4EA9C60A64;
 Mon, 22 Jul 2024 15:06:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73A2EC116B1;
 Mon, 22 Jul 2024 15:05:58 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:05:56 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722150556.GM715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-2-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721660760;
 bh=TK0al/uMs3CK1iORM5isxOj7FXQB4yZNGw7sDKCCumc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ctkw50svmiBxfrO11lusc6eUku33OYFvtxyeSuGg4faCPC5wDa207G/XpSUjfGxcL
 hkzcmPc+j0fTtLwiLXKJ31SpOVqBADgJ2JKbrPfclZbBqQHxz+cWoV8aII1oDFLO6W
 dq0OamqGYmEv+H/RwBrd65gcpS8BKNq2UvGquBBGf5+wYqL9nb2Vhy5Lk8XDBKQmyP
 /sbwPq8erJCLRkizeTzsGDlRYHlcme0ZNhxwe3T9sxleCqZDU+6IEQqaej+6D/dV7n
 82Ehkzowe3NdV0ztKqKB//szWEKTv7u/Oebt64dpO2I/EtmxX6Rm1W1n/RoncgKHe4
 lD5E9W4MI9kKg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ctkw50sv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 01/13] ice: add parser
 create and destroy skeleton
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Junfeng Guo <junfeng.guo@intel.com>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:03PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Add new parser module which can parse a packet in binary and generate
> information like ptype, protocol/offset pairs and flags which can be later
> used to feed the FXP profile creation directly.
> 
> Add skeleton of the create and destroy APIs:
> ice_parser_create()
> ice_parser_destroy()
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

