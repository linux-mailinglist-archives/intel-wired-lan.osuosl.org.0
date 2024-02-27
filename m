Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63985869ABB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 16:43:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1718260A9D;
	Tue, 27 Feb 2024 15:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZINzgZNOcu4; Tue, 27 Feb 2024 15:43:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7999460857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709048590;
	bh=Ruo3FQ/TKdxa2ulE5HwUhArYoqvbxDl/lwy8CmgfIjg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yci3bCuWo4cnNcVAgkCk7X+dfUDM+G2gt97D/6MuirujtBGdDqPsNKPAlpdeEyGis
	 W/vYaYiM8VOg3vhypUNI5Xa+uX9vY6VaGJWeEnI6LCzX5Tj2WzrzKhQM+PPT9wTpFV
	 RlY+wfaSVxBpC/V/vyDx/JL9Sangc/Y+jP7XZqQuhH6rKc5Msshr1tPAXKB9GsoNiJ
	 KhCzZpj/IP4oPRbEBoB9t4GyFwllW3ypMKHwXmMl1hJQZwOv5lpXHEigWi4VZSdmsi
	 UK/vev2eulHOdQ6JMV0STB2G8IPvRZjGYRj/nJg50kI+QrQ3P79idsn0CENX3N8Hia
	 NhGyr588f0kuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7999460857;
	Tue, 27 Feb 2024 15:43:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 694C51BF307
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5546740727
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y36bHNkjjYSu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 15:43:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B8704405F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8704405F1
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8704405F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:43:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 897FC6145B;
 Tue, 27 Feb 2024 15:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED3D7C433F1;
 Tue, 27 Feb 2024 15:43:02 +0000 (UTC)
Date: Tue, 27 Feb 2024 15:43:00 +0000
From: Simon Horman <horms@kernel.org>
To: Karthik Sundaravel <ksundara@redhat.com>
Message-ID: <20240227154300.GA277116@kernel.org>
References: <20240224124406.11369-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240224124406.11369-1-ksundara@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709048586;
 bh=K6qxV/PqF4vaZH3ha+bkO8pZVnHtRWeU645o2MFq188=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YnEMS6DvNt85awweZGtd5cTs/S8vxk+cQKuo7Ylsm5NM3rkjynht1MeIW6Bx3d7er
 quNVjr4ulzBpp6NmBsQOqZSoVv9oWN+Tqj4tVVuFqhZggJZqzPefwToeJ6b446oW5g
 MtKa8NfDQ6Sq9agdbiVYg8p2gHnosC/odMPKFYW1EeBQiPWcxBjsh4CY3a1Ap2G6jH
 oEohpIsQq4BRdn3kbnwxIW8quzAmJOyH4UvbtDB0n/sSBgYYJ3PwOh96hbReLSuYMn
 GqSrGYiFjbM1jvd5/SkRLuVS/m+rSdmesSgoVdwmsfFeh7++l02PmqL52jJSGu2/ZO
 DfMtGrB1ZUY4g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YnEMS6Dv
Subject: Re: [Intel-wired-lan] [PATCH v4] ice: Add get/set hw address for
 VFs using devlink commands
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com,
 michal.swiatkowski@linux.intel.com, jiri@resnulli.us, cfontain@redhat.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 vchundur@redhat.com, netdev@vger.kernel.org, kuba@kernel.org,
 rjarry@redhat.com, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Feb 24, 2024 at 06:14:06PM +0530, Karthik Sundaravel wrote:
> Changing the MAC address of the VFs are not available
> via devlink. Add the function handlers to set and get
> the HW address for the VFs.
> 
> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

