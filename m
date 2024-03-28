Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B85389071E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 18:24:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DEB982384;
	Thu, 28 Mar 2024 17:24:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UIX8gP_eDWVT; Thu, 28 Mar 2024 17:24:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC5E182312
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711646655;
	bh=IFC9bb0tspvSsao9iqlYtfzTuymR8L0iHdPfTsw0kxc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DWyLPquSAztahqvxAhBuXr8ncV/ex2glfr2Tjdei0pBzk7cE55WCOWTZWxJJmggct
	 rGgOgHj5/Ccfl+gOPEpsySeckuVAiFWFNj1XYZ5GMBK1nkpmPk2W1gXFAk0QXqZUNj
	 1mbcNt0HqtueLHPi/ah0R1c1W8uM+FV4U+p1F4KUi0o8pZCyO7dB9aMvtEeNtrmYJ4
	 FahTKvS5BIdeBe+Sfyf/SjjDdT+iazb1DFhLSw84MZjxyYf/GP5A/eV0V4IPDLe38x
	 Bs9v8EdFJHSsD+lYohSowzJtRby182F0Xt7YAMemQCwRY0ak3DCxYBHBns642fPj45
	 vApLzFZEr4Qrg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC5E182312;
	Thu, 28 Mar 2024 17:24:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0DD71BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA8CE60663
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qxU8v6rldUuQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 17:24:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2805E6063E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2805E6063E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2805E6063E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:24:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 041D6617ED;
 Thu, 28 Mar 2024 17:24:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4989EC433C7;
 Thu, 28 Mar 2024 17:24:09 +0000 (UTC)
Date: Thu, 28 Mar 2024 17:24:07 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240328172407.GD651713@kernel.org>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-5-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327075733.8967-5-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711646651;
 bh=YzeAtMUDtiWRpYydJqQhcSkYUuXxZ7hxJ+EVoQxmPHU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pe7HPGj3dxopONjHyHuIMiZjtUTba8xpYRf45nZDoMUa97DqIE+fUXqpgGV2KyTHg
 Wj0es5p6BKOpqDD0+9bhR/t1qxP3zwwcB25RHujxRrBBspViYuFLjepRbeIRfOAUo9
 Toct6F328tdDl413Bv0TwoYfpujbi1KEB66HhnbBvUU5D6BQwdH3/a+SqOsX6RyYkm
 XLQcvnfCxYhEYllqYErD/dF/YcEHjgImcxC+RXB962UoVAHy26/I6/veHSZf784PQB
 3EMadqPEjZIgNP8/JqmZ05CXwaEj/NCye+Z17U/WRhPvV5uhU3kDVPF0AY50JYR+8w
 hvpzOCw+qvz8Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Pe7HPGj3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/7] i40e: Add helper to
 access main VSI
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 08:57:30AM +0100, Ivan Vecera wrote:
> Add simple helper i40e_pf_get_main_vsi(pf) to access main VSI
> that replaces pattern 'pf->vsi[pf->lan_vsi]'
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

