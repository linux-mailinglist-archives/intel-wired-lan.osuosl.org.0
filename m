Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A8AAB9BF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 14:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E622660BB8;
	Fri, 16 May 2025 12:26:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hO2IVTuywHxS; Fri, 16 May 2025 12:26:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EA5260A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747398382;
	bh=C+m6U0caltwp6u/ftybc/4iDiF41Rhvr6jyudjoaTtE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xclxNtD5JddmNnOdkVquvDLjtjDnrCnXUhk4HpiOCXwcT1qUign0YWPk+CDcbM0ud
	 zpTDfZ7bPBV2CCok9NEaVgdjwnNoECZSPls2LCpND1U002UMubBFNDLxGFYe+D6uyd
	 qOjXL7gB/Ac5w0nFbhLLo0bJElIYEo+UsZ6IEAaPIkpjlXFiF+limP+9eFfZFuXAKp
	 Z6+4N3nD0+qBUHoYd6Ni/+XpF9Xl96w07lyAJt5u2NXCNKYypNhEBC8SvYVDRthycM
	 UFMLEdPrKLeQx53yujfGLjWxd89DZRkO7das6OSVkHXBPTzlg0tvoaKhiIpZPQz/bo
	 it6LdSe+Kl6YQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EA5260A69;
	Fri, 16 May 2025 12:26:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B0129185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C11C361033
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BBpOVv25Zn-5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 12:26:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2DC7A60E22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DC7A60E22
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DC7A60E22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 12:26:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C7BF2A4E76B;
 Fri, 16 May 2025 12:26:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1C94C4CEE4;
 Fri, 16 May 2025 12:26:13 +0000 (UTC)
Date: Fri, 16 May 2025 13:26:11 +0100
From: Simon Horman <horms@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <20250516122611.GA3339421@horms.kernel.org>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-3-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513101132.328235-3-vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747398375;
 bh=CyM4S9jfL8h2B2XiLu19YmvBFt4ZtyX71KO11OJNNnk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iG9xI1CY4GYCevM2jgFfDr1rJM63qtMSB3WV6tDK4klkdr1Lgvhcre+oqU03umkE8
 q71vdNCX+c2XHqxLnLM3bbSsSQha1THzMuV4Djzqz1mQcgwYQrg8aJzrgWsvPqTJZt
 LaG6U8hPrGhmxaCOM0wDLMVNbSRaG/biDUu5UOHZjtoYEiwxj3fQHVsoh3o6Qkccmk
 +OiW31rHu4DQt5ljz4r34TO2mMY3Vp38r4CTn5oQ/PpxfFvucH5vpnKCLazT5gwWbG
 Holl2CQIO5BoeX9Ik7UGc+0z34EKbBkn5Kne8kpJ55mEKAdiHrKQZe9WL3fVdsMNk0
 IGxl+3j3PdtAA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=iG9xI1CY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/5] igc: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On Tue, May 13, 2025 at 01:11:29PM +0300, Vladimir Oltean wrote:
> New timestamping API was introduced in commit 66f7223039c0 ("net: add
> NDOs for configuring hardware timestamping") from kernel v6.6.
> 
> It is time to convert the Intel igc driver to the new API, so that
> timestamping configuration can be removed from the ndo_eth_ioctl() path
> completely.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Simon Horman <horms@kernel.org>

