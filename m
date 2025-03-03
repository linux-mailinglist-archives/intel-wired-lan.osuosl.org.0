Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFFDA4CF3B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 00:31:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B665608B6;
	Mon,  3 Mar 2025 23:31:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gEbZ3eHGHtC7; Mon,  3 Mar 2025 23:31:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EFEA605BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741044686;
	bh=EKAFSLvAGIrkjZb7bzNhLeWmjgEAZpK9PSzlChil82s=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fD8OT9NSwd9nmIGEx33CDw8s28HJJ0UTrwkuXhsiW8YuGGdWMEOtKSpnq19N7kPOo
	 7W04PNcV3oFZlhpIKsSPX2NAM74yGrILvHvLS7AauFSgbEmq6dTQscP5h4uIkaWqzS
	 enUGg64ieQgCDSr9mYR4pPuE7pIQ5F/5jKfLEhgHNRQzPHgMcfBZAyWhfybiMwXCpU
	 qBr1r79or0fw7AIwOGkGIR3kf4hlZOitxlInB4BKccDH0WBWcHRPO+4qKsG7fscJxv
	 KgT0GBy2Pz3t1Ms7Dilpna7Z3bpmbvVffHH3MG/GAo/AHFjj4jUumTy0O46IcfwVKV
	 ol9zi9TZ1sRdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EFEA605BD;
	Mon,  3 Mar 2025 23:31:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 98F3BD2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 23:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79ABB40106
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 23:31:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KvO65UdvypcF for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 23:31:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 933564021A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 933564021A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 933564021A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 23:31:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DBAC75C4A51;
 Mon,  3 Mar 2025 23:29:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D14FC4CEE8;
 Mon,  3 Mar 2025 23:31:22 +0000 (UTC)
Date: Mon, 3 Mar 2025 15:31:21 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: joaomboni <joaoboni017@gmail.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250303153121.7c730c7c@kernel.org>
In-Reply-To: <de6bcb17-964e-475d-b535-ce153760d9dc@lunn.ch>
References: <20250303131155.74189-1-joaoboni017@gmail.com>
 <de6bcb17-964e-475d-b535-ce153760d9dc@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741044682;
 bh=jLdoRInvvwEShuEFZWsnPRdGs0cSl04n78oihRgyXK4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Jy0df6qtKrL7i3bQBfYZTd7mEnIg+/dWHfRx7hj06WDikx5ze4XICXn/EOqMmQrEZ
 4H338XgrQE0BTmBgW+XbAXvNfvN98QnrD4OYnrzwqP/0aBLNRfQIfnyHdrG3Msu1gt
 Zhtn4juPholfxhfVtS5ai8ndINTcZskpMe3s6VthCLrG20CJmH+p/IP652kXL5SvsA
 wi+Zxi50JCOo9189onKkCEUE61zU4mo3dOUk+cNA52Z7DiRygjNK1hiK0f+R8sIkbz
 JyDnAEKBd8AkLgvwxj1tPIe0kG9x05RpebgVmEDhMOqDWmz5XuO9TPcuUNqlNvcYLa
 nwZYw9JuQN6gg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Jy0df6qt
Subject: Re: [Intel-wired-lan] 
 =?utf-8?q?=5BPATCH=5D_e1000=3A_Adicionado_cons?=
 =?utf-8?q?t_para_melhorar_a_seguran=C3=A7a_do_c=C3=B3digo?=
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

On Mon, 3 Mar 2025 14:48:46 +0100 Andrew Lunn wrote:
> Sorry, but the Subject: line needs to be in English.
> 
> And the name in Signed-off-by: needs to be a real name.
> 
> The code change itself looks sensible.

If only we were also LLMs, not just humans, we could read commits 
in any language!
