Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E58DD91BED9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 14:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0638840277;
	Fri, 28 Jun 2024 12:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mhYEvyiHuOGo; Fri, 28 Jun 2024 12:44:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E6394028B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719578676;
	bh=mUUrKdcXbjA9jCFyOMjqlTLvJDSohWihFgYpynFUZNw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A9JAe4W8HW+flOUe/RzEW6tw+eZ7/DPwGvyOMVxFCd7HCFkk0YHrCL+mRhMwK+hI9
	 +7lb1dS9mJoay84V0ik4Z3o3UqBpoLNRJBR6slceMNZkeKrOBby1ihtdOEi89qv94X
	 g1xl6weFIkZMcLFO7uLko0edcVaLS99EVSVIzOCUXPl/4LFbZTjGf05bMMhdRuQxvI
	 H01Z3FRvBhPWvjotbEek5SjQ059tMPPAWDAdluO0wET2TKQPowv7SsheSMj5QwtMcZ
	 Je5ul3qZhyN/ts4zbWa7CgeHtXJnIJvuN4Uyh2fhNW2EQLOjNEfPOTfQhwOvF5ZvNP
	 ixSXhVyG7PWkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E6394028B;
	Fri, 28 Jun 2024 12:44:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FCF11BF41C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CB9640374
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:44:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XKtUW-qKBXXe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 12:44:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EA8F7401D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA8F7401D2
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA8F7401D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:44:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id DF204CE3BDC;
 Fri, 28 Jun 2024 12:44:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05520C116B1;
 Fri, 28 Jun 2024 12:44:27 +0000 (UTC)
Date: Fri, 28 Jun 2024 13:44:25 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240628124425.GE783093@kernel.org>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-7-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618141157.1881093-7-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719578669;
 bh=VpWvE7L2aKZqcvK+G9gnA0RyvcenJo16xdZeTu4gR8w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JdFz05vro1Q9b8sLcUoMuIllh0LQS76ALOWG62Pl03/CUMlvohDDg4ib0iqN3dlqK
 q3hCMsyE9jcOtY6pz6BGiYx5rxBO2qO/AHrBW76nbBmZGrsPzi4m9DiLfUE0lNoyod
 8B4U2cNud7pkBkh91rVds4cZ7ovMqe5IMcwa+pY1J2ykxUG/bOHpNq4GVGj9cvp+i0
 3Q+QXvGhPDetH3efR+bkQsM2qIssUNCgsveK6m6xBRXyFlajudLk3k0f5s7u4R2moE
 uPGtvbtfYtPE/msAJaswYH5l56vc6tn2ix888hXxtV9O6qnLGoD4xJWD/qtyK32wPs
 BRyuI0PWaZTBg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JdFz05vr
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/6] ice: Remove unused
 members from switch API
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 04:11:57PM +0200, Marcin Szycik wrote:
> Remove several members of struct ice_sw_recipe and struct
> ice_prot_lkup_ext. Remove struct ice_recp_grp_entry and struct
> ice_pref_recipe_group, since they are now unused as well.
> 
> All of the deleted members were only written to and never read, so it's
> pointless to keep them.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

