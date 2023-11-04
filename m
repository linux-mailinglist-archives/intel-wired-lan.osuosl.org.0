Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2775E7E0F97
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 14:30:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9AB3140A46;
	Sat,  4 Nov 2023 13:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AB3140A46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699104615;
	bh=qbJa/8mqO19C6v+jESezvS6HrI9EDR8TE0yU9IjynPk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ld+2FKnOsM+uJdPDy4wvQeLoEtNB07aOMQ1ZGDbIU2v6BGg0sRr024MIS0Rqu08c+
	 k3oi/Y06RIXu8f29QCuHu2jjt+cqaPylVz9i7bCQkhqKa7iEl3Rh439yNQ9RL/pI99
	 n+yLD0WCwCkA4l8szBTY/IuOanEz5CKUIDaGyD0FBgJ/MFxQ5y7DMbHKiUQB8XwD24
	 KS8jt05PIDvh+7JEQ0Hd9m3tjljYL5OfQAA+e4hnnQwnhcm9Bhq7JS69xOdlXISunM
	 dzMl/JF8Nfl9iXdTQO6ZkdjyQNq0Jlu7ANDPAIdgnkKIY1t+Qy+FMlrA3aFdoirWho
	 ZdGlFWg/viReg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PFHblWLxjTYU; Sat,  4 Nov 2023 13:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43CA04090E;
	Sat,  4 Nov 2023 13:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43CA04090E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7355E1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AD3C817A4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AD3C817A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hYGiq4CAxkUq for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 13:30:08 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF71681775
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 13:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF71681775
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0E825CE0229;
 Sat,  4 Nov 2023 13:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 322F8C433C8;
 Sat,  4 Nov 2023 13:29:55 +0000 (UTC)
Date: Sat, 4 Nov 2023 09:29:47 -0400
From: Simon Horman <horms@kernel.org>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <20231104132947.GC891380@kernel.org>
References: <20231023105953.89368-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231023105953.89368-1-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699104603;
 bh=HfpAese7HNiucJjcRMtNzyEWq/Bw/yqeBhgi075sAv0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d/jkbv8trJ9USolJjhEX4II5rBo0nPFIqmpLykt47y89Z1mnGhh+We1jMv9mt56jV
 D4LDzS+nHV6EO/XRdSwrLDDZuBCDQ4/6idCpsM/n64X98CtwiUSlxThLBdsduINUnG
 nW0E60HQtdQmArGIWPLy5KdKEEn5w4A6FBF8I/tW7o3FjK6tGymXhH+Fh0y+aNd/iY
 F5u61sCoy1E2JaPKpVk6VP4CSZ8FOYtdrmawyjkwJ5MlE5HZc5P3FknX/WbzEcL/f7
 A82NvatnYfWZ/qiU6K3XFFmnXyfd+G3C5I8OXA6K4m9p2YJOL0dVPwt87qI8ULnM4y
 agZscCiZ1FZ1w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=d/jkbv8t
Subject: Re: [Intel-wired-lan] [PATCH net] ice: lag: in RCU,
 use atomic allocation
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
Cc: Daniel Machon <daniel.machon@microchip.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Dave Ertman <david.m.ertman@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 23, 2023 at 12:59:53PM +0200, Michal Schmidt wrote:
> Sleeping is not allowed in RCU read-side critical sections.
> Use atomic allocations under rcu_read_lock.
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
> Fixes: 41ccedf5ca8f ("ice: implement lag netdev event handler")
> Fixes: 3579aa86fb40 ("ice: update reset path for SRIOV LAG support")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
