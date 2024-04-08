Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0B189C22B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 15:27:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B1D560B05;
	Mon,  8 Apr 2024 13:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HdkZZJ40QR5P; Mon,  8 Apr 2024 13:27:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8400860B0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712582869;
	bh=4tGwx1//FsGwQ8jjTFl/dvqMs0s9F6VKMjMYbtjYnnw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VwWYyxw36ClaUnjCeG9Z1tZqo7Fnax0s8MS+NUajMYua6SpZfDj5aDtTfkVeeKHzr
	 V0fl8q9DHIvLOE9KZzbFRFRqWeTWyj5BNQJUOLHrD90i/ynKeXZsGmgx7QMdxWKyTr
	 uQmJiCCEh4guu62EPGr6LCyC7AUAi1u4JJM+vD0cCCikK2NOqy42oN+/ka6dSioDmb
	 UVkClcMyHZLybt9ImW8Isf5YTli8GOkn+d43c/KS/Zna6LjzokaQTShKbOxEmbuu9Z
	 3PQ6HaGRnTytZQSkwHR6hzu81Oy372jHxFg7iv2W4eWa2oOnK5Pwh8nD6CzI/5qJNP
	 CQmxvjUTRLNdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8400860B0D;
	Mon,  8 Apr 2024 13:27:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 243071BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 13:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FDC940AC9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 13:27:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hl1O42usruY4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 13:27:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 076FF40159
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 076FF40159
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 076FF40159
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 13:27:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 95E0FCE10F4;
 Mon,  8 Apr 2024 13:27:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9355BC433F1;
 Mon,  8 Apr 2024 13:27:35 +0000 (UTC)
Date: Mon, 8 Apr 2024 14:27:32 +0100
From: Simon Horman <horms@kernel.org>
To: Karthik Sundaravel <ksundara@redhat.com>
Message-ID: <20240408132732.GH26556@kernel.org>
References: <20240404075917.4347-1-ksundara@redhat.com>
 <20240404075917.4347-2-ksundara@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404075917.4347-2-ksundara@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712582860;
 bh=oKmlzsu1mzXeyzsroGlcDIypRVHUX7fZH8394HWhSzw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GnJwoFd70UCXRfAS7Zwt8djjohdK4218pY5tlhXCDcGN9qViHzY5MzHUiDnqxSVom
 oAuiiMhDSrRoZwn3R8j0e8XgbViJB7J9yVCzkqpMK9wSv/L+fOmcJsQhiESul6jkbv
 RYYfvZVqVjKf8Ov6uJttJIbrKvQ9sXlkYKYmxJyMLpsXfJ4sLTGCac18iOSiwnQGvL
 WXYIJudvUpCOvPioBgTRFf3pLFFpS3Z54chQzZjrCd++haXMqzzxUK24JBFsMuZO1C
 1h9h9U5LPeT/WBlz+2o97SPqYDxL+yM7jNLMtHFMT7ToR8Y5R7V4IgodsmDr0g691x
 j35qXDlexMwLw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GnJwoFd7
Subject: Re: [Intel-wired-lan] [PATCH v8] ice: Add get/set hw address for
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
Cc: jiri@resnulli.us, pmenzel@molgen.mpg.de, aharivel@redhat.com,
 michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com,
 cfontain@redhat.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 vchundur@redhat.com, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 kuba@kernel.org, rjarry@redhat.com, pabeni@redhat.com, davem@davemloft.net,
 sumang@marvell.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 04, 2024 at 01:29:17PM +0530, Karthik Sundaravel wrote:
> Changing the MAC address of the VFs is currently unsupported via devlink.
> Add the function handlers to set and get the HW address for the VFs.
> 
> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>

Hi Karthik,

I think this series should be targeted at iwl-next [1]
but it does not seem to apply against the dev-queue branch of
that tree (or net-next).

Please consider rebasing and reposting with the target tree specified
in the subject. e.g.

   Subject: [PATCH iwl-next v9] ...

[1] https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git

Otherwise the patch looks good to me.
