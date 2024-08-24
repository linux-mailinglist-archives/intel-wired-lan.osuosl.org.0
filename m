Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2579F95DE1C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Aug 2024 15:32:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75F9B60679;
	Sat, 24 Aug 2024 13:32:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3k4ihz6CO27u; Sat, 24 Aug 2024 13:32:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE4A660625
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724506352;
	bh=iYdiFI7ZWYPD5L4KdfxKa2YPulo+xjoFZjT6tHF1xBw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rJ0v5W86AgnjQkzNduhObXIs3zgqTmDQJiuTRH8C26siYJ8r+5yDVIN11/e7glol2
	 3Bx6iWcdU6mzdKg7ishTMPIEd3Fhx1hTmucSW0cOC2Tf21DKPhE6tUEJf+i4X3dU6e
	 umQip2ZoU7vciPYz9VB1GChC2j+hQSP5aRzZeTX83mAY28Q2HfhYenCc3E9OZ9eCgo
	 ne2iTSP6Ad11xPGBwwzWUqlb2BocA8pqnqCKucGWmuIvlbuYj7grTIIbrBHrl1dDoR
	 pMIF5WM7hl7P1+sQL02/6WT3tXLi9KgvqZIc26jvkhwlx8/+dF+d4DKVVvFGnPweQC
	 MJWfCVCy/z2Ew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE4A660625;
	Sat, 24 Aug 2024 13:32:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C5891BF349
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 13:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 751FE60625
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 13:32:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VbdSVcQ6fVDw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Aug 2024 13:32:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB4666062D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB4666062D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB4666062D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 13:32:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9ACE460B21;
 Sat, 24 Aug 2024 13:32:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AAA8C32781;
 Sat, 24 Aug 2024 13:32:25 +0000 (UTC)
Date: Sat, 24 Aug 2024 14:32:23 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240824133223.GK2164@kernel.org>
References: <20240820102402.576985-8-karol.kolacinski@intel.com>
 <20240820102402.576985-13-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820102402.576985-13-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724506348;
 bh=yWDV6zMHCzJEYB1oaS9d3E9GAKtkhUP1/BrP+7WaSHA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U+REtyjROfseawkBmwNI1Pt4XlpJe6xEZpHDz22GwMIhDr+ibZneuo6IPBXPdoA/n
 z72oKn4gQPwutl/6ZAFDwS4LpmveE7iMxMXYWi225bCrzRjRLjBUye0JAePK/svnAE
 RHloFbG2/K7m/l0ONCWiCiTNjOpivLtArVYLYoYIlEoylwvOeLOUAp5n7+NS0Sc4q3
 lK9i9/7oW5c4AN2YRryRJtymbXW1l+7aWjOswMuFbB47UJYlEeCYTFpdAqdCpjxT+r
 LhyQSbUB/aECFJfYi/F92XcSybgXPO6uOzRTP+hZMYDKqVP37AinNePPKE0LYlq28o
 3KDPtjIhiIxwQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=U+REtyjR
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 5/6] ice: Add timestamp
 ready bitmap for E830 products
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
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 20, 2024 at 12:21:52PM +0200, Karol Kolacinski wrote:
> E830 PHY supports timestamp ready bitmap.
> Enable the bitmap by refactoring tx init function.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> @@ -3344,20 +3327,13 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>  	mutex_init(&ptp_port->ps_lock);
>  
>  	switch (hw->mac_type) {
> -	case ICE_MAC_E810:
> -	case ICE_MAC_E830:
> -		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
>  	case ICE_MAC_GENERIC:
>  		kthread_init_delayed_work(&ptp_port->ov_work,
>  					  ice_ptp_wait_for_offsets);
> -
>  		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
>  					    ptp_port->port_num);
> -	case ICE_MAC_GENERIC_3K_E825:
> -		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
> -					      ptp_port->port_num);
>  	default:
> -		return -ENODEV;
> +		return ice_ptp_init_tx(pf, &ptp_port->tx, ptp_port->port_num);
>  	}

I think it would be better to maintain default as an error case
for unknown mac_type values. (completely untested!)

	switch (hw->mac_type) {
	case ICE_MAC_E810:
	case ICE_MAC_E830:
	case ICE_MAC_GENERIC_3K_E825:
		return ice_ptp_init_tx(pf, &ptp_port->tx, ptp_port->port_num);
	case ICE_MAC_GENERIC:
		kthread_init_delayed_work(&ptp_port->ov_work,
					  ice_ptp_wait_for_offsets);
		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
					    ptp_port->port_num);
	default:
		return -ENODEV;
	}

And update the Return: section in the Kernel doc accordingly.

>  }

...
