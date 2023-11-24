Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DC47F723F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:00:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30F2C61502;
	Fri, 24 Nov 2023 11:00:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30F2C61502
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700823637;
	bh=hJaxiW27m9V2ZPWpEQ6hUmqE2wxqRpgh79hgkDrN1iQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W+vshvWhTgao3QzSxX9/EPhoKg3NCfeUas9aKG9nxkoHUhra4hbPK4KvgASw+Xht0
	 d3l0OqZMuquQoCS/ed3i1FJeoBQ9dTOXJfb93KHFbsGnNvdKdsnutw2PR8sIYl+ss2
	 d05achCb6y9nXd035KVdTliuHHEA/03v+FBp+92dSoeWOEitBXQHE+k0p2xaLneqjB
	 srXP8D5U15O5VqISBj8ZgSdFQ3InTz/UiaDc/o1NjThHVE3SXghvij56eEmzGYfp2l
	 pHKd0h7xv2XtSd9y2FWgZ8HV8uFOMFo6bQcVG2T4ZSkki26Q1/xMI6l4tH1OUXPSnm
	 5b+kRtvkFbf2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0boNoQaLGbEU; Fri, 24 Nov 2023 11:00:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 122C561504;
	Fri, 24 Nov 2023 11:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 122C561504
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F29E1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:00:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 041F3614FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:00:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 041F3614FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QXUem34GLR7s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:00:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 737AE60B0B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 737AE60B0B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B421062135;
 Fri, 24 Nov 2023 11:00:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15C18C433C7;
 Fri, 24 Nov 2023 11:00:27 +0000 (UTC)
Date: Fri, 24 Nov 2023 11:00:25 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231124110025.GE50352@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-6-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121211921.19834-6-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700823629;
 bh=lY5lbWMSvYgdNTnwGkTdkoM/X4wObIy/Mhn5AVhK97g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tXG9Rm0j28Ip4AJr/y+Y+3vmxmUP+7sQxEgg2Ig5u3DW0vUrxbRRJ9/npsUsyn//E
 9V9cAiCtF3/deX7X1wA8kRzOI05eywutRw+tiYX/xP9geW9cwhaEQJN0UYatdJxKMt
 fA2kqypGvSJkHSBJUfH/CtRXqnRF2jG7R0tCfp+8MM6wY6ffcLRYf2Zt34lCpvZEIf
 VMKOh7MDgnMsnRf8y266ziFbI6vjzxWaL9SYb0aa9DVUBQfC4MmEa/lA2zP9g5JHWC
 rJCBzK7qSfE6ehuAvdHZip8p/ifoUF/9UwBBZdqcDvWI6cZoAhMPTqnQ7yVUP875w0
 4vmbsRXo/uFxg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tXG9Rm0j
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 05/13] iavf: field prep
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, Ahmed Zaki <ahmed.zaki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 01:19:13PM -0800, Jesse Brandeburg wrote:
> Refactor iavf driver to use FIELD_PREP(), which reduces lines of code
> and adds clarity of intent.
> 
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
> 
> Clean up a couple spots in the code that had repetitive
> y = cpu_to_*((blah << blah_blah) & blat)
> y |= cpu_to_*((blahs << blahs_blahs) & blats)
> to
> x = FIELD_PREP(blat blah)
> x |= FIELD_PREP(blats, blahs)
> y = cpu_to_*(x);
> 
> @prep@
> constant shift,mask;
> expression a;
> @@
> -((a << shift) & mask)
> +FIELD_PREP(mask, a)
> 
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Cc: Ahmed Zaki <ahmed.zaki@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
