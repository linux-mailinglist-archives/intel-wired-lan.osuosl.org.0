Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A2A868747
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 03:37:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A1526088C;
	Tue, 27 Feb 2024 02:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DqJUWmyuxckK; Tue, 27 Feb 2024 02:37:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C202F60709
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709001426;
	bh=vYr+WCq4NgMAyrS2j/t34ahlxgLcp31YT88qFXeb6xI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RTNt7tK//Nsx+bAoRFlMs/a2FT/+A1WFZicDFHttbB1n+TXDH/ekz75OaP0bF04dh
	 TZx2fNkOXaAMQWiywaKp3N3iGsVjpY/2HfG8s9kMmCMweri7QlnFHJnQ3Azi39E+jp
	 FIWSn8EvGs0dzlx6sVDBGP72pLndLZqaCy96DNv9fmvZDoBf3zoBtwxtDFXrR2VVzo
	 DnbkiYA2FWiPk4YAnmMKE+neR5jXZqFarL1/uf4lVlgHKFgtzGfhCNTpx2Ic1l7Y8c
	 yXeZA0EqNUWEkiWl2o5WOXx1A6M/QXrKP+ozJxyaVDugO554lE0urZs4geQ8GZMC3B
	 mMbGAXt3n5l8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C202F60709;
	Tue, 27 Feb 2024 02:37:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F6F11BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 02:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57FFA40569
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 02:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tFZ-fK8jO_TN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 02:37:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 82B6140550
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82B6140550
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82B6140550
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 02:37:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4406A60AED;
 Tue, 27 Feb 2024 02:37:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB64CC433C7;
 Tue, 27 Feb 2024 02:37:01 +0000 (UTC)
Date: Mon, 26 Feb 2024 18:37:00 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20240226183700.226f887d@kernel.org>
In-Reply-To: <ZdrpqCF3GWrMpt-t@nanopsycho>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-5-mateusz.polchlopek@intel.com>
 <ZdNLkJm2qr1kZCis@nanopsycho> <20240221153805.20fbaf47@kernel.org>
 <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
 <20240222150717.627209a9@kernel.org> <ZdhpHSWIbcTE-LQh@nanopsycho>
 <20240223062757.788e686d@kernel.org> <ZdrpqCF3GWrMpt-t@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709001421;
 bh=NPHkntyNQWs/c+91Q/vIgp3rM+4cUdlquzRTakc8a70=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=g6od7+rIBZNSmCzw7lJF7UMevm/THf6dbI783m5tG5mmsEjM1Fvzh2HS0c0yrmcNw
 UJkoig4YMJr1Mjj1PWWIS9ys+DX4oV0LjYq+d9X2vu+kWSgkmk9TeGt9YeELLKaCcD
 wAJSVVLx3VP9PDs02pS15FsXNq1rAeX2irbWxp3lCrMrLqbLGRP2RJJOQaokqf6389
 Yz2dwmiYZ40+k4Tb6+IaSaIPOckpoiy0N+h55NRxsOyTg16OmQwo2j72+Wis7k5Zuf
 mGqkfsU5xro5G4YMdQFrK0wvZOlNLJknTMV1ZcRLFK02P931xbDNUTx5xDXr+LURtF
 i+0F+KcjxsTnQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=g6od7+rI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 25 Feb 2024 08:18:00 +0100 Jiri Pirko wrote:
> >Do you recall any specific param that got rejected from mlx5?
> >Y'all were allowed to add the eq sizing params, which I think
> >is not going to be mlx5-only for long. Otherwise I only remember
> >cases where I'd try to push people to use the resource API, which
> >IMO is better for setting limits and delegating resources.  
> 
> I don't have anything solid in mind, I would have to look it up. But
> there is certainly quite big amount of uncertainties among my
> colleagues to jundge is some param would or would not be acceptable to
> you. That's why I believe it would save a lot of people time to write
> the policy down in details, with examples, etc. Could you please?

How about this? (BTW took me half an hour to write, just in case 
you're wondering)

diff --git a/Documentation/networking/devlink/devlink-params.rst b/Documentation/networking/devlink/devlink-params.rst
index 4e01dc32bc08..f1eef6d065be 100644
--- a/Documentation/networking/devlink/devlink-params.rst
+++ b/Documentation/networking/devlink/devlink-params.rst
@@ -9,10 +9,12 @@ level device functionality. Since devlink can operate at the device-wide
 level, it can be used to provide configuration that may affect multiple
 ports on a single device.
 
-This document describes a number of generic parameters that are supported
-across multiple drivers. Each driver is also free to add their own
-parameters. Each driver must document the specific parameters they support,
-whether generic or not.
+There are two categories of devlink parameters - generic parameters
+and device-specific quirks. Generic devlink parameters are configuration
+knobs which don't fit into any larger API, but are supported across multiple
+drivers. This document describes a number of generic parameters.
+Each driver can also add its own parameters, which are documented in driver
+specific files.
 
 Configuration modes
 ===================
@@ -137,3 +139,32 @@ own name.
    * - ``event_eq_size``
      - u32
      - Control the size of asynchronous control events EQ.
+
+Adding new params
+=================
+
+Addition of new devlink params is carefully scrutinized upstream.
+More complete APIs (in devlink, ethtool, netdev etc.) are always preferred,
+devlink params should never be used in their place e.g. to allow easier
+delivery via out-of-tree modules, or to save development time.
+
+devlink parameters must always be thoroughly documented, both from technical
+perspective (to allow meaningful upstream review), and from user perspective
+(to allow users to make informed decisions).
+
+The requirements above should make it obvious that any "automatic" /
+"pass-through" registration of devlink parameters, based on strings
+read from the device, will not be accepted.
+
+There are two broad categories of devlink params which had been accepted
+in the past:
+
+ - device-specific configuration knobs, which cannot be inferred from
+   other device configuration. Note that the author is expected to study
+   other drivers to make sure that the configuration is in fact unique
+   to the implementation.
+
+ - configuration which must be set at device initialization time.
+   Allowing user to enable features at runtime is always preferable
+   but in reality most devices allow certain features to be enabled/disabled
+   only by changing configuration stored in NVM.
