Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FDCB0AD17
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Jul 2025 02:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8085617BB;
	Sat, 19 Jul 2025 00:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7xqmr-ndnc-c; Sat, 19 Jul 2025 00:51:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E874617B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752886302;
	bh=6jEA4TU1D4SMcJi4y9JYRx6hY8TOB1c5Xp5t7CJTErU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iPfDtaBHolNP5DtOqqIlQ1Ewdlk9wMKm1Mz2m/AyJ/y18Fz8DMrCLikEHF7YrKYka
	 3sN6VFtkYtN/WRWoGHjwGpshlMOM05szKghtIoTA4E4VbP0vquTKuJgsLpBG3DAMQo
	 YSd/67jvtBmvaw5NL3DBuz/sp1yhO6f3fNGeJq6cvOM3lM83zycMwI2u0tpMZKbcK2
	 mbICOQzEU4CqxR63dNbmuHqq3vWdA0BihZqsgdFHq5Jf4R3YYtTo7qPrebftAzSQLq
	 26/ZXgVNuhx0mQM2ajOc1mFiBmOgAq4C2mQuJWdEuqCzoLRFfmsBxZcLVjUn/GCj4c
	 7BskMHmaKmBuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E874617B7;
	Sat, 19 Jul 2025 00:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D19F9DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B790B84640
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:51:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mPXsuRPFCLjr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Jul 2025 00:51:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2472D8463E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2472D8463E
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2472D8463E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:51:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2C3FDA576A0;
 Sat, 19 Jul 2025 00:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5882C4CEEB;
 Sat, 19 Jul 2025 00:51:36 +0000 (UTC)
Date: Fri, 18 Jul 2025 17:51:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tariq Toukan <tariqt@nvidia.com>
Cc: Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>, Jiri Pirko
 <jiri@nvidia.com>, Saeed Mahameed <saeed@kernel.org>, Gal Pressman
 <gal@nvidia.com>, "Leon Romanovsky" <leon@kernel.org>, Shahar Shitrit
 <shshitrit@nvidia.com>, "Donald Hunter" <donald.hunter@gmail.com>, Jonathan
 Corbet <corbet@lwn.net>, "Brett Creeley" <brett.creeley@amd.com>, Michael
 Chan <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "Przemek Kitszel"
 <przemyslaw.kitszel@intel.com>, Sunil Goutham <sgoutham@marvell.com>, Linu
 Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, Jerin
 Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, "Subbaraya
 Sundeep" <sbhatta@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>, Mark
 Bloch <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>, Petr Machata
 <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-rdma@vger.kernel.org>
Message-ID: <20250718175136.265a64aa@kernel.org>
In-Reply-To: <1752768442-264413-5-git-send-email-tariqt@nvidia.com>
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
 <1752768442-264413-5-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752886297;
 bh=9kJxhZth6grHo3I0CSXBwom48o2ExKgGl5rWqerKBiQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tUkcr6sPsug/hB3yPND7FFHxRVfOfHwN1Aqkgeb1Mimp1m8HUXIYRsdijzn+uaYlx
 JjWmGmAoMAQNi4gfHEcVtbVbA4QcHbRNr+KdkXV3VsvrYHiQMQFe8+K7Mi1AUOZRyb
 F3czf9k/JukXjWroE8xqyO8kr5tu5Zm9FDm2ITtSsUgosLGFflMwIrpTh9lNI82nla
 6B1Y1GrX7Grlxmm8cubOAT1Z5iyKBfxtnPLMTMPrCvyUs0PFckWd//n43aSeUs0r35
 G4+h+NP6AXbZaSECVQPFeMhFDbrTWCn0EHBfyDfoFZ6EPLrt9RdVJIealii11cN4o4
 NSYDUizP/6jlA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tUkcr6sP
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] devlink: Make health
 reporter grace period delay configurable
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

On Thu, 17 Jul 2025 19:07:21 +0300 Tariq Toukan wrote:
> diff --git a/include/uapi/linux/devlink.h b/include/uapi/linux/devlink.h
> index e72bcc239afd..42a11b7e4a70 100644
> --- a/include/uapi/linux/devlink.h
> +++ b/include/uapi/linux/devlink.h
> @@ -634,6 +634,8 @@ enum devlink_attr {
>  
>  	DEVLINK_ATTR_REGION_DIRECT,		/* flag */
>  
> +	DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD_DELAY,	/* u64 */
> +
>  	DEVLINK_ATTR_RATE_TC_BWS,		/* nested */
>  	DEVLINK_ATTR_RATE_TC_INDEX,		/* u8 */
>  	DEVLINK_ATTR_RATE_TC_BW,		/* u32 */

BTW the patch from Carolina to cut the TC attributes from the main enum
is higher prio that this.
