Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F35E871F09
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 13:22:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66804415FA;
	Tue,  5 Mar 2024 12:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iTvtVgVxiWt9; Tue,  5 Mar 2024 12:22:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77FD1415EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709641325;
	bh=HPCqDBXr26w7bkQbRJtFGicHvmsyOmDezE9eA5ul67o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nG+KiNmfePGYpNRnyINECCerjf57JeATgWAQIdaEVL8g/HSpqN/jWQ5Ft4scutvdp
	 +OAw8JVBPAoeV4c728KhqCGxzoti3Jkx9Ws0V2sJiria2WHMoG1GLDU8jXglqgN5hx
	 nrSJRJ9HZrnY1C9M2cA5cq+daFbl+m/5vz5RnrX3H9Z3sJiz5lLqpThbf0doCvBXKV
	 fQRJ99/lI0O79hJi+WlgSSOXyXdtz9UGMbZuYf9R7/W86kfCk5Zv7eDouAMozYeNkN
	 aERtyMwPxwY2H3hYVUJgw8wn2RcoAEQTjr8stMsc2HcKHIDWJd4skvK4KAibffDBeC
	 IJ7Qr2men183w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77FD1415EA;
	Tue,  5 Mar 2024 12:22:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACBBE1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 12:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98D9E60DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 12:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ok78I13GMZ7X for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 12:22:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F40C5608C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F40C5608C7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F40C5608C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 12:22:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B631B61454;
 Tue,  5 Mar 2024 12:22:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57A14C433F1;
 Tue,  5 Mar 2024 12:21:58 +0000 (UTC)
Date: Tue, 5 Mar 2024 12:21:56 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240305122156.GC2357@kernel.org>
References: <20240305003707.55507-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240305003707.55507-1-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709641320;
 bh=aa0SxF67ImBmy+ijMpNxNU0wTZQIXYeC2cXFMKEsvpA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sZuSRKlid/14Yqas42xwkY+jW/96tCopGEdtDafzxnvaigMG9QFe2IjFucfCHUDrY
 xUPekYls0EiF68RFXQp9pVlwdlAmRTQdxDFIjTFUICmjeLya2Dvq+OZB97AjODtNom
 iLy6Ncj5F3mr6YOELFKSCBEe3bSSrun+mR5QEdHv4bLAjtIxiKHd9DFbZxrE3ZzyKE
 VW24qgHDKwwdfUINtrsH+crS2So50Znj3eG7k7i+l6eFIAq+SN/Pf8o7KtTDq4yalp
 5bQkxm/51044Go0N1Ad1svxIsOYLd/THEcrA52UKaAG1PcMYFCLjNCNCAPHqEjN7c4
 j6R4MaNe1UxZw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sZuSRKli
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix typo in assignment
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 04, 2024 at 04:37:07PM -0800, Jesse Brandeburg wrote:
> Fix an obviously incorrect assignment, created with a typo or cut-n-paste
> error.
> 
> Fixes: 5995ef88e3a8 ("ice: realloc VSI stats arrays")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

