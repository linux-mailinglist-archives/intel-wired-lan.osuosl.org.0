Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCC87C85B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 14:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7F346179B;
	Fri, 13 Oct 2023 12:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7F346179B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697199925;
	bh=R+uGrBMc8IFW8PrUd7QPGhyRRtIXzrsB7tIJO0Z5MQA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M7+ODMVJPvvuRIkywgf+YAvpNwAB+RN5D6623zShPLn9ej/xfgrz5NcDZCMWMHKPV
	 31RiXVJYME86MLnWwZ9oO3luAGLDVb2EMUxXJ7JSyyS44KaWznUbY7MeNAJKo94Vug
	 vwAuEIdvvLNEJ72fYVtKFdu+1or2yVdmqaYS/o00I63P+D0udp0Yufz53fpKqo8Hxc
	 WnpqfPMr77lT4Mqow7dhHn4352oypmI5xodPqCrjYkfGub9rzRveH2Mja+eHu7Ko+q
	 apseyGzA7WAyydux/vv/1bP7LxWWoyBCQn4ch5SrYf1N2VUGYKM0T14ylqWADStlFO
	 abW+zWPl+7kKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3tyKAhIApX8F; Fri, 13 Oct 2023 12:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7835961512;
	Fri, 13 Oct 2023 12:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7835961512
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB3391BF47D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 12:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBFA941766
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 12:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBFA941766
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3SvWME0UWb1N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 12:25:19 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3FAE40105
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 12:25:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3FAE40105
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 87177B82ADF;
 Fri, 13 Oct 2023 12:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B6E5C433C7;
 Fri, 13 Oct 2023 12:25:14 +0000 (UTC)
Date: Fri, 13 Oct 2023 14:25:12 +0200
From: Simon Horman <horms@kernel.org>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20231013122512.GJ29570@kernel.org>
References: <20231010173215.1502053-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010173215.1502053-1-david.m.ertman@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697199914;
 bh=Sh3lXd+8Z4IJV4cJcY6y0VkcalEpNiJDy+Eu/kpmhQo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CmK/sreBKFhUnjkjBhAGs+enKTg3jMQxcTC4POByhbDaNouy3nPmtM+spFNyYVyV8
 r3uniMQPwpyszw0OrKCCL1HvLKmj2leZEpbaFXJoWZnOiHkATS/uV3uklWHJGDaief
 4lBt16xZni0e68JuOQlnz+XysVj6xzZai4Oa0cB7C4H8d1WPOLrr6f3QFSTZDrJsqY
 78TOIEdCewNIYOVAWgY0ibmgNTQoj+4IlzFiJDmMWhxrXB7nsVES3ApDQvrLkWFFim
 8rhtgOtHrHT8GLFvU14Z5LBMqp/BgqRuUcB1BVQOLYu37xfBdC3vwIyAtAeP9pfynr
 JAlWYGNBHSBqQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CmK/sreB
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix SRIOV LAG
 disable on non-compliant aggreagate
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 10, 2023 at 10:32:15AM -0700, Dave Ertman wrote:
> If an attribute of an aggregate interface disqualifies it from supporting
> SRIOV, the driver will unwind the SRIOV support.  Currently the driver is
> clearing the feature bit for all interfaces in the aggregate, but this is
> not allowing the other interfaces to unwind successfully on driver unload.
> 
> Only clear the feature bit for the interface that is currently unwinding.
> 
> Fixes: bf65da2eb279 ("ice: enforce interface eligibility and add messaging for SRIOV LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
