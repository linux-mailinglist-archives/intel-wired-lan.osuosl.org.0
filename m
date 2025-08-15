Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDAEB2863F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 21:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7B6761145;
	Fri, 15 Aug 2025 19:19:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNDJJlJmOnR0; Fri, 15 Aug 2025 19:19:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BCD96112A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755285564;
	bh=KoHH6v+NGPdTtPmV0lpPihwH9pww9wdBkOHWgqla8Fk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UdyrAssuNaDEQQHb7kP6r9e3o64DPZLvWKI5uyMZD/G4I2l02zq4wrc7NH5lqYmxv
	 ufdMjF0QN05SLZG4CiyQ+apQDOJ/VYaWb2KZ4n6fAMvh5DGngMkl8kmdEiUh9kaOdM
	 Tb7GzwPrqm6mkVg2+aButGFPv1BJSOtesHuvX7JCwUntC3pta8aIurY20BpjIsHRoH
	 qG7f4CxJ0E7kFk2vlty2nEJGsJv2vWiJj0a0su7CQI29WV3rJJJRDkzuBHxPhy1hfU
	 Yfc9AcehKv/OkbXL6DCheQTlXTxofjSw0gjtanGHtCkIY6bezFSnp2mt6gyf3Vo6K7
	 T67c/iDmoF92w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BCD96112A;
	Fri, 15 Aug 2025 19:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 44584223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 19:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 416C760EAA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 19:19:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4zvMOFa_Wr0x for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 19:19:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A7AEA61123
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7AEA61123
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7AEA61123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 19:19:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A6F8145681;
 Fri, 15 Aug 2025 19:19:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F364C4CEEB;
 Fri, 15 Aug 2025 19:19:20 +0000 (UTC)
Date: Fri, 15 Aug 2025 12:19:19 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tariq Toukan <tariqt@nvidia.com>
Cc: Jiri Pirko <jiri@nvidia.com>, Jiri Pirko <jiri@resnulli.us>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Donald
 Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Brett
 Creeley <brett.creeley@amd.com>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, "Cai Huoqing"
 <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Sunil Goutham
 <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, Geetha
 sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, hariprasad
 <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, Saeed
 Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Mark Bloch
 <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>, Petr Machata
 <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-rdma@vger.kernel.org>, "Gal Pressman" <gal@nvidia.com>, Dragos
 Tatulea <dtatulea@nvidia.com>, "Shahar Shitrit" <shshitrit@nvidia.com>
Message-ID: <20250815121919.21d391ea@kernel.org>
In-Reply-To: <1755111349-416632-2-git-send-email-tariqt@nvidia.com>
References: <1755111349-416632-1-git-send-email-tariqt@nvidia.com>
 <1755111349-416632-2-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755285561;
 bh=qfPT0VRlhVkZQTijCBa6A1kTR1vmk0XxmuYkvun4LjI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PruoxHLgp+5J2J1cq8xZ/REoFYESEe3lNH80UYCQlTTfoJdiZmh01uBKmsl9f2olE
 Txbg1qGd1Y7HYAO7Y3jy6iWIYhXNYDGJX2mPfJ/qB+nDETW5QxapXx4Ofd7SHrPs6L
 u2mIn1TpOT4zKbKDsP8M5n4HT0TCj0ROe47nWPMB1gW0Lnv7kC2iMJREGcX7Izi1QM
 GtumUHuRqtaI/C2Uc2jA6PAN+uWItg38WAvbOs+YaqY2lsdk93IRu6/cIHYyv8z0uA
 x4+D8tc8FVvRoNrFbHBWCQPLpVw6giCtD8rOIs1NpkPGDV5Qp6pC7fE8TSDPARG6sw
 Lq8qw72jQlb9Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PruoxHLg
Subject: Re: [Intel-wired-lan] [PATCH net-next V3 1/5] devlink: Move
 graceful period parameter to reporter ops
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

On Wed, 13 Aug 2025 21:55:45 +0300 Tariq Toukan wrote:
>   * @test: callback to trigger a test event
> + * @default_graceful_period: default min time (in msec)
> +			     between recovery attempts
>   */

Missing * at the start of the line.
