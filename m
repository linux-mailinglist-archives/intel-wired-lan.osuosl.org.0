Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B50AB352E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 12:50:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20F7260E06;
	Mon, 12 May 2025 10:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UxT7CYRsIDXm; Mon, 12 May 2025 10:50:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 926EE60D4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747047016;
	bh=XtimY0FiUIc2ncaHcuJN6DWAPM2xXwZcKRzjtn2sPe0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=50WB7coA/DmpKdBOYYrzyFtBvmdCX+KZIbQkFDBc2geqNeMWDQ036Ng6nitZ7fUG/
	 7CHGLLOFyVQkIwUMVEdxnVw++d8IqNW3C/7WDr+0k+ULnSD5ZE3vyKUcOSCVD9ZYzM
	 byGm3o5Enmrv025/F9ASPPvWT897uzdg5SyHw/TD5fMNiTpAS//CP/D2sang88M5ii
	 7WSvyc2nMsOA+5KQELA64MV9hHx/O0bOCKiSbNW357rkz3YTAtxitJKKp22efoPcJf
	 1+juiH+YvCdnMpLTbNmG9E6RLQUUM/c9NZ7wTOju71C+VBgTUQyJ4bxUAX/DG+jVZm
	 +S895FjFVhNhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 926EE60D4E;
	Mon, 12 May 2025 10:50:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F2F06154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 10:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D921181EB6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 10:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wqbJxKRoHexY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 10:50:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48EC781E3C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48EC781E3C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48EC781E3C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 10:50:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8A51C5C59C8;
 Mon, 12 May 2025 10:47:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 954D8C4CEE7;
 Mon, 12 May 2025 10:50:09 +0000 (UTC)
Date: Mon, 12 May 2025 11:50:07 +0100
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 decot@google.com, willemb@google.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, madhu.chittim@intel.com,
 Aleksandr.Loktionov@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, joshua.a.hay@intel.com, ahmed.zaki@intel.com
Message-ID: <20250512105007.GV3339421@horms.kernel.org>
References: <20250508184715.7631-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250508184715.7631-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747047012;
 bh=e+iHFFvbruofVMUiESNM5p87mXt4iKHPAlFggn2ZUrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FI5w3Zqer+z3kX9ysloz9OmxlfTonSfnCVmT2AZ/SbEoelW6Xv1T5tBtiAmVVc+5W
 7VNBec9726M2Bs2MhJ8cQJqRIVw5VHQHN7GHA1z5XCet5zZEqCB5Im89UrhU3aP8j7
 C2CnoOYFeWiLWnDFJuPVjM0Pd7LeUhTBKXI7QKn6oIXzAfxmJ+B7dirsQpOXGlk9yB
 SqhCyQB7RKJdun5Ya6cclqTaeEstzbaZcsfn01c8GPPHdrjDpg8fM78RU6LlS1iSCx
 WtBGfEjbpYcyXrNQMYb6hSEZNNaKMEl0WxikNMUZ1XMpi6gV5qhk5X0nq3Giu7SayE
 eSN2rzjCXfYbg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FI5w3Zqe
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid mailbox timeout
 delays during reset
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

On Thu, May 08, 2025 at 11:47:15AM -0700, Emil Tantilov wrote:
> Mailbox operations are not possible while the driver is in reset.
> Operations that require MBX exchange with the control plane will result
> in long delays if executed while a reset is in progress:
> 
> ethtool -L <inf> combined 8& echo 1 > /sys/class/net/<inf>/device/reset
> idpf 0000:83:00.0: HW reset detected
> idpf 0000:83:00.0: Device HW Reset initiated
> idpf 0000:83:00.0: Transaction timed-out (op:504 cookie:be00 vc_op:504 salt:be timeout:2000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:508 cookie:bf00 vc_op:508 salt:bf timeout:2000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:512 cookie:c000 vc_op:512 salt:c0 timeout:2000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:510 cookie:c100 vc_op:510 salt:c1 timeout:2000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:509 cookie:c200 vc_op:509 salt:c2 timeout:60000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:509 cookie:c300 vc_op:509 salt:c3 timeout:60000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:505 cookie:c400 vc_op:505 salt:c4 timeout:60000ms)
> idpf 0000:83:00.0: Failed to configure queues for vport 0, -62
> 
> Disable mailbox communication in case of a reset, unless it's done during
> a driver load, where the virtchnl operations are needed to configure the
> device.
> 
> Fixes: 8077c727561aa ("idpf: add controlq init and reset checks")
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

