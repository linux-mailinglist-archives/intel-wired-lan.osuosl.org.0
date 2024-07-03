Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0406A9267FE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 20:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A984941B3D;
	Wed,  3 Jul 2024 18:20:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3LelWJ7ifqhX; Wed,  3 Jul 2024 18:20:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4BB141B4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720030855;
	bh=ddTrotik5js4rogRAmQAP1WqotlURtvNZidF3O4ZmyU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zEt7I8OjpJ2uIbS8mQhG+tXDdMUezCMxGOSmbDbRuZUDi/TJip7pH+5jGYmsDMhTx
	 fGlKTboklYeCDIwZ/zJ+/y2WzDbxR76ZQpj4sKN4gHnUIxN2wPKmoUR1UI918UxHNY
	 1skouE9xm9C0TG+256gaxQmyYfnrb1qhrXwnLFGJUZNN/PtWR5jLpG22OZnMMY6RIW
	 N8b1Rgdj0OQ0W08Vt+jiHrhDa5ylubedCutudw8dBB1H/JkGUTsFXpCDsE35C2JKVY
	 p6IwdZtD6npjVSSF8WeDJHdaHD99SJvoPnj1W1rEOZ/bBxnltd6X1Iv29lM3/vrUc1
	 f7rXG7qT2Dg+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4BB141B4A;
	Wed,  3 Jul 2024 18:20:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 086361BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00CCF4052F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IX-4l1YID8yz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 18:20:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4AF81401ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AF81401ED
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4AF81401ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 87B1E60C25;
 Wed,  3 Jul 2024 18:20:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF3CFC2BD10;
 Wed,  3 Jul 2024 18:20:49 +0000 (UTC)
Date: Wed, 3 Jul 2024 19:20:47 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240703182047.GN598357@kernel.org>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702134448.132374-14-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720030851;
 bh=T5vz8e4Q6ADnU0SXFbQTuUb29Cjb5UvBS+IcJ8J/jc4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k7apOXDzV7yGQoCe/D1Bzq2WORBnRidbM+VwZk82E20msNUk+5h6knOrXunNz4nT0
 qUlGFSXfQZPFKtiDsUqVU+B+cGBoCChK2Jz46/PpWu9+rmVd+eGDEDg0dFMAiqUbLG
 z7c3On2wOrw/6SFnbgUA4Gk+MsL1xhgMVzcqY+gr0ZvDSPsswnEJdlKhLJDgCDOwc4
 KO3eqKwR+TKUb4GCDyFpWrDPBNMT8jFMIfKAYUtyPl12MN/mBfIW2cU30ZD8Df3PKa
 7o0OqCcw5hrw1SkWExohJ5+cXdqLZKGjxHT4XsDhElXfXj8suKvnWtLInVkkhhqeG9
 w4v4VI2qLAeoA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=k7apOXDz
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 5/7] ice: Disable shared
 pin on E810 on setfunc
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 03:41:34PM +0200, Karol Kolacinski wrote:
> When setting a new supported function for a pin on E810, disable other
> enabled pin that shares the same GPIO.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Fixed incorrect call to ice_ptp_set_sma_cfg_e810t()

Reviewed-by: Simon Horman <horms@kernel.org>

