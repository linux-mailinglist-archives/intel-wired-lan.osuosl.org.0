Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB8B8D68D8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE2C842418;
	Fri, 31 May 2024 18:17:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eevmiO9ya6DZ; Fri, 31 May 2024 18:17:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E411342402
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179457;
	bh=j4haNDKzCVeIod8+7hCEQCfbGksFYZd9OeQFNyot9vk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FXvjH4GLdUw3pncDHTDHv2ukm5AN89f9t95qtaVYzEC4ZvGEeHGWBTblrPwdDVXRq
	 ucJwLSn78Hwa4sG/V8L9STC3I5DattBAjbqo4xGGxrnKOw70udt4vDFrzSqzwdvi/y
	 CQzAFaHSogdNXbimPWaRdTxhEPwnBNuyHAIfF1zMyhcvCFS4mUT6J6xUsdRT6bcQTR
	 ce8p+weWE884yU7M0T52itDd6pAaM59QoBfD4PZ8bdMMvr88MFH6IIY/lvxmq8KA5Y
	 4gqtSO57BviCu0iWXicLOgN7c6rX4yIVwFp9zKy/1SRhUn4SafO4lsRYMVlWnq1uYI
	 t6LQ1leZ7Ik5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E411342402;
	Fri, 31 May 2024 18:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 678311BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5325842419
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gj_zeYXDvpXK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:17:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 367A242402
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 367A242402
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 367A242402
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id BC38DCE1C4A;
 Fri, 31 May 2024 18:17:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14B40C116B1;
 Fri, 31 May 2024 18:17:27 +0000 (UTC)
Date: Fri, 31 May 2024 19:17:25 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240531181725.GM491852@kernel.org>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-11-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528043813.1342483-11-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179450;
 bh=W/omXzBzUzF7Pk0fUDiQJKOo7GEZcS//QRExZnWoq8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sZWZCKnXPR19qBWCn4wnj6LherYSGqC5ZinZUqJlbUpwIE0Zp+9w8LZbLCHm2I1h0
 mX8fEOe2cPuTYYY52vrAX7pe/b/4CK/+9NNrN1xQ1sqC79eCWaZqLL3Lljb6sYUPjW
 OpmgeF3exyKvT3bGTTBUXvPqftaq84enNu5EOqxu4L4/RQIspgDIuU0AZD6+NfeHR+
 K2MUqcH65LLA8aEjkYm7Hy9hB3PP3z5EzxlFPysHMja1pOg6Ovurvojlv2dubgom5i
 16PGPNxjkWVFXbLibCTwZeVPx+k0Qhg96PmlaX29zJia+flQ/UDZy6H7AMtkoXSk+U
 uiSAv/fFly9vw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sZWZCKnX
Subject: Re: [Intel-wired-lan] [iwl-next v3 10/15] ice: don't set target VSI
 for subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 06:38:08AM +0200, Michal Swiatkowski wrote:
> Add check for subfunction before setting target VSI. It is needed for PF
> in switchdev mode but not for subfunction (even in switchdev mode).
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

