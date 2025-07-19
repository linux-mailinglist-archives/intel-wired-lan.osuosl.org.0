Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3457B0AD0B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Jul 2025 02:48:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B02E41B47;
	Sat, 19 Jul 2025 00:48:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i3Cowc0TvNct; Sat, 19 Jul 2025 00:48:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C33D41AAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752886132;
	bh=VvbfGzkdMwjga7KAUkbPD5HkMtVt7ildJw96kWX5FJ8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=faVz/J5BtQCFCTcrf37Drj3EtCm4zwlNB2JgASGY5qonvTDEg8UXl/akOdZKrQBcV
	 VHz/y3HlyyghwmyQlgu/JGVe2Cy969eod4I/H6szOCwwLVytadS8/PpkLsYKzhkuuy
	 wAwbZXQ7fdWJBUQWtMm/M5HHX9oYWOulKXLfhWIvmEqUleQKs/WWHOBEknQYVmkFCR
	 aX+N0bkCJ/pvhABAKrji/EcLg0ci7T7rUOBRGq0k7RnjbAtdnLqJz5z8O8ElFeKD7C
	 pEJD1pPLB5/JQvApSkiKyqL/hLtxmx97BlOmOgWioGyZLbzxHqYwaqxAmOgByAy9oI
	 1L3WjQXyxukzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C33D41AAF;
	Sat, 19 Jul 2025 00:48:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A1233DA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9217A84633
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:48:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3va1OsCzqmQe for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Jul 2025 00:48:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8C8998462D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C8998462D
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C8998462D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:48:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id F1940A574C5;
 Sat, 19 Jul 2025 00:48:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79D91C4CEEB;
 Sat, 19 Jul 2025 00:48:45 +0000 (UTC)
Date: Fri, 18 Jul 2025 17:48:44 -0700
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
Message-ID: <20250718174844.71062bc9@kernel.org>
In-Reply-To: <1752768442-264413-5-git-send-email-tariqt@nvidia.com>
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
 <1752768442-264413-5-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752886126;
 bh=6dgQXljSybQMUm6Fi1nMuC1dGZk4ySO6T8l7XezcvZo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RRn+v0du7QIiWPRCfKBtIBvk//B/sECBTAJBbZpMZ/cAkX57sHJVXka3QUbfTbLPq
 u9K9xdYVvB/1xJik/oswl+jrHqXvj8ILkEEFkE1hqq8n7L1dyWRVO5RuLXuvAEn0tW
 NlZfUj8oKhJqnhMDe55vhLSofpezBhBPM4Grt9DsE1UFO7eOF6QRDFmQbuBwOGkGOx
 Av8RPO7Ikn25OPKIaMX707BKInxE3O/XoTRMJn3a2hXPUxspfooodUnKLNCpfiCPuD
 6zpK/boMpZ1CVKwEmaRnHFRuxX7d38j9F3Zkh27N3rWTLgdtbyu7zxUJUjzaVXSgiC
 i6U1K+CLmd7bA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RRn+v0du
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
> +	DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD_DELAY,	/* u64 */

/me pulls out a ruler

50 characters, -ENAMETOOLONG
-- 
pw-bot: cr
