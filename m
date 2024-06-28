Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F7E91BEC0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 14:40:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82C1741A45;
	Fri, 28 Jun 2024 12:40:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9boktA5e3rDK; Fri, 28 Jun 2024 12:40:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C263F419BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719578434;
	bh=hAdN4fal5/ROnysKdbyjRoVMwjY4rWM/n7R4cTHS3VQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yRJBKjulWJvIKWTwectSMdyRr35nMc2PkRDdau9KqtYy06I4rsUyTwuWmHIeU2KBV
	 qOFOBztVoLAGOKCTfCTCa6cOEIH/lbsrGnFbpf8kp/VacdS9bvj87d0LDeI9XJAr/1
	 jw1SWDB9F4iBWVF7sqvyOJ9ZnDMRKcJaIRK2TRFGkx0bWxVrMwXDGY5v8ItKjibIoG
	 3vGgmWCGYE9RsQWNlW5g6h3T/7G/au00O4/hWyL+muQKVrJAChJTu2sEL0Q6C3trq7
	 vYj20BTjLLjYRE+sv6oEpPqxhgvFJq4owmHmcT0d8+iIESmGzRnTUlpnB6d5l6NoNo
	 22PzTfil8MdeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C263F419BE;
	Fri, 28 Jun 2024 12:40:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2711B1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E87240319
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t_maMb6eUMPj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 12:40:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 506E4401D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 506E4401D2
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 506E4401D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:40:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 192016206E;
 Fri, 28 Jun 2024 12:40:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9934CC116B1;
 Fri, 28 Jun 2024 12:40:28 +0000 (UTC)
Date: Fri, 28 Jun 2024 13:40:26 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240628124026.GA783093@kernel.org>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618141157.1881093-2-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719578429;
 bh=tUiYCUBWNA88EcOXBErIcA7jZ2sP1XfpQ1tQHvHycmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MwNoLlz4J1a6l3MJerg/3PZN9r+9D1QSHJSGli/Dr60oKuT7DO6pXThvnmoFCwv7Y
 Czp+YYunoBmYoWmx8O6QFAzd/xuAFtccU4OKkWGUsO10Kxvqf86uhziBopvqfHbXJ9
 sxch8kySmMMiomE7GzWasOl8+o9Ap57YrMLlByNwGguLdhYBPzjI9AKFaZO8OErRR6
 2KnuXFPKYP1FAH6arzNS5DH6+LZ4tN4/aAe895TEFS2/WOHmgVJeAigkWtMjSoPzMa
 usxBW2TePiXVnoRuI19+9Jd7XuV7EWGQF3n4yY2fGPgKYK4OpnKoISDOglYQfYhkhW
 65m9+RBc4EcdQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MwNoLlz4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/6] ice: Remove unused
 struct ice_prot_lkup_ext members
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

On Tue, Jun 18, 2024 at 04:11:52PM +0200, Marcin Szycik wrote:
> Remove field_off as it's never used.
> 
> Remove done bitmap, as its value is only checked and never assigned.
> Reusing sub-recipes while creating new root recipes is currently not
> supported in the driver.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

