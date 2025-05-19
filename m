Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6603BABB838
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 11:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CFC540962;
	Mon, 19 May 2025 09:07:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HIQJSRYolyF7; Mon, 19 May 2025 09:07:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDB8640996
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747645645;
	bh=FLLNHuBMg97H5mFijqjDgM18Agrs0fvpOFh1kYg954Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ahi6mbUT/MOawXuRRl7ulMDMnMa6i1NBfZLbkUdR+zpCtpxJcIvF8xkzo3UnKa7J3
	 hPTkmYzVnPFil4BP9Ulegt5VHnrScchevWNJRUMIWoZu8n8d9tW+AfRDD9IT3jGVTN
	 YFgDh+2osDVhLOaerpjKh7REIW4eW8AE1hyAo09e1DcoscmQZH9T2UDCaZ4AInlnOP
	 hk7mhcWounyUJJnznFJGhsIA4DVmcqZFqrQt97lVD5GE2JJPFd95dGH8KjYNlRynNs
	 TCFdG6omUQCwkD0fPWH7IGkdO6lh7TZMw877T5ZaFE4Wwou1BPSGgg4AD+b8uky7Rr
	 gmzaAW6/F9kMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDB8640996;
	Mon, 19 May 2025 09:07:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AC5D193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F07CC60DF9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H4flcSjyOdC9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 09:07:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75BD660607
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75BD660607
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75BD660607
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:07:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1E965A497C9;
 Mon, 19 May 2025 09:07:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C735C4CEE4;
 Mon, 19 May 2025 09:07:20 +0000 (UTC)
Date: Mon, 19 May 2025 10:07:18 +0100
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Message-ID: <20250519090718.GD365796@horms.kernel.org>
References: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
 <20250422160149.1131069-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250422160149.1131069-4-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747645641;
 bh=CY5hZNk7BtIXQNCriJ9WT8EywUZQlHQRfgpoWPjAgU0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sfEJgBfPqXUCSqXQLtWgDk8jplfJhbaV9iiHt0v060V3mMYHdGIHR0ImBocR2w4dU
 O6Ma2v8DF488tlgw2vbN6aDv7SEk+kPAx9+u45Z3s8PNG+UlxHOKD8bgtxgjI21nQy
 +I04SD5Enmx0hdnYvPuou/AeEqRqP+nxj9O7FEfo1032LMwmGH2z6V3ZIsJNpfGzrL
 G0LD3ANQPlPFHaYEztI0PrYGq9Bcw2LnConjOW5TS+Pk7w8MqljzIwfp3qtLZX/a8w
 rUeYUlnSGrLUdb39FJG6Rogfv/8f4Ljh8Hmn5ojw13EmpCqDonV1R4b+f2sN83h+8j
 qqqBt32aIM5Og==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sfEJgBfP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 3/3] ice: add ice driver
 PTP pin documentation
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

On Tue, Apr 22, 2025 at 06:01:49PM +0200, Arkadiusz Kubalewski wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Add a description of PTP pins support by the adapters to ice driver
> documentation.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

