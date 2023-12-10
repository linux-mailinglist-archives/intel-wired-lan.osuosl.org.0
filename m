Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4131C80BA88
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Dec 2023 12:54:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 625F06106E;
	Sun, 10 Dec 2023 11:54:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 625F06106E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702209267;
	bh=sykPpd8ETUDreZCYwvx7SiWIydhJyz07UN2ZCokDEO0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W16GhSZk3xV/9bkgAU+RR9mHjcePRaxm2niMAKMAYzGN0c+lm3RiiZ3QBnXZj+JYr
	 9M20E66q3H8f36p87PdzIxPIKqmVb755o+RTt3Zk5rouN3o4LVq80lDgDvB6fkMaDe
	 GvrhMUXQtpdkE/1OeNKRSdKpwBWldG2nA2SyjWiq2g20JMBBbhoJUqOoLUZuanYvXy
	 GY0cVUovxL9uuavtje84zkBLflWrhWnfnGN027ycR9ipqc+Q+12b8tJz31fkTrT51o
	 rm+0A/FHAtgBAkkkDJmrxiX3XTLNxb8pxA3vFaqEPboeiO7+0QjkXCuytQ2mbmcRV+
	 DoK6vt16OLkOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yIkP07sb9D1L; Sun, 10 Dec 2023 11:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 446066104E;
	Sun, 10 Dec 2023 11:54:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 446066104E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11D081BF593
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDCDC82099
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:54:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDCDC82099
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SXssTemyZYNL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Dec 2023 11:54:20 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E3538208A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Dec 2023 11:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E3538208A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 33587B80A27;
 Sun, 10 Dec 2023 11:54:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60A13C433C8;
 Sun, 10 Dec 2023 11:54:16 +0000 (UTC)
Date: Sun, 10 Dec 2023 11:54:14 +0000
From: Simon Horman <horms@kernel.org>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <20231210115414.GK5817@kernel.org>
References: <20231206173936.732818-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206173936.732818-1-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702209257;
 bh=x6cjpt3ajy0Kzb75ylp+GLKAKp4kb24qMl37MO3JNIk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UkH21ofnQYHV0Vs2oSW+t/uDnCP6CzdX7Y53lJsOFMLDAMX/46zp3/uH3+j6LCEMc
 27oUG/jVVLDdeFbBCbm5zBLrGpZNIRJMvWQVpdF1sVDot5tNtBjGnlch0/9fHvXoty
 Xh1O9Ne5O3YqEOD4lEixA5W5v3aspEwPcIt3CyR1yWlW1zYExcze9J51bvRkspkLZ6
 F/ku17FGXywToRTt4T1GpM2MdvVj0sP+smnyut1GDZrs6/f/rzEem5MC2eDj4Km1oz
 vmdVPjTZmlSfx6m2EZGDSQ7mklDgVKCEabqeA0l8IMWbzeUYg/jK666MdqSMEr3Gg8
 d9mmuMZjkecoA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UkH21ofn
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Do not get coalesce
 settings while in reset
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
Cc: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 06, 2023 at 06:39:36PM +0100, Pawel Chmielewski wrote:
> From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
> 
> Getting coalesce settings while reset is in progress can cause NULL
> pointer deference bug.
> If under reset, abort get coalesce for ethtool.
> 
> Fixes: 67fe64d78c437 ("ice: Implement getting and setting ethtool coalesce")
> Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> ---
> Changes since v1:
>  * Added "Fixes:" tag
>  * targeting iwl-net instead of iwl-next

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
