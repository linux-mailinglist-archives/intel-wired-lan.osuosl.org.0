Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4989F0BB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 12:55:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC22A60749;
	Fri, 13 Dec 2024 11:55:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DmWZWqSYwbvC; Fri, 13 Dec 2024 11:55:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DA0160777
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734090904;
	bh=cbo1W35ng9YDc/PilUhjYQTcd1BqISPzfxkwMSDjyMg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ovMm8mRh+yc28J3Panv8vbnl18JT7/X9i2I+3/rAT3cEReKff48ucguUqPfOHRtlI
	 acRyVhAcuJWIT5J9adItlIXmF2iRhjZ3xJBtsRb6mGUskvzGWhsVBDI4Vq42DtWWcH
	 uOPz+ls7nvPLld2MHZTwwZbxOS7exj1AnIsTZofDzDr018nnikDOfYWi80HDq49/Ps
	 hIpxabo6s3kZJ4cKPY9FbIAmI1mcpmtmMXcyTjxAD9KlOcmx0zUDKuavSJzbU6zyv9
	 SOGc8nHImWQc27puwk+3QDJaVu7alvTd4FCPc0W5z1ILoCYTaqSKhCE/S0CTeO+1wP
	 SDg+NhZHHOL5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DA0160777;
	Fri, 13 Dec 2024 11:55:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7580BECD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 11:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F47A405BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 11:55:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Bf7ZVmYSezo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Dec 2024 11:55:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7209540003
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7209540003
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7209540003
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 11:55:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5CE535C6AA1;
 Fri, 13 Dec 2024 11:54:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB2C1C4CED0;
 Fri, 13 Dec 2024 11:54:58 +0000 (UTC)
Date: Fri, 13 Dec 2024 11:54:56 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20241213115456.GQ2110@kernel.org>
References: <20241212153417.165919-1-mschmidt@redhat.com>
 <20241212153417.165919-2-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241212153417.165919-2-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734090900;
 bh=yerIgJaV5A6Rde5kjoCtHKFrLDMP5haBZrIi+LOjhWw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t3oGSOBYXGFvw/H33jRiRJvt5B00lfqnqAkvb7tOu/YojDdnm2YUsyB5tw/k6xSFm
 0rSGRIqFl++x0PkeMFjrvNhX5XNW37h2vBI7PG+lNmrtxNkeVGMhIA705gHU2K/i0p
 64Kk8MxvuZzD4G7x6kvUoGeW1VHlow2Zbfz4D2McRG5clzMbc7MjLzkIb+Q7Tyqvk8
 DQkgWjyED3z+Mkwdom9xGvx+gEHlfqK2Q8DKIfj+tTAPLaSSQRootijEWktot38DJf
 CkrQ/EC6gGEZkXMtFy/RtLMv1eN9aY5Z202wz/52viyZKf46jfIe5pcpTOUroChrdn
 0m1rS24nun5uw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=t3oGSOBY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/3] ice: downgrade warning
 about gnss_insert_raw to debug level
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

On Thu, Dec 12, 2024 at 04:34:15PM +0100, Michal Schmidt wrote:
> gnss_insert_raw() will reject the GNSS data the ice driver produces
> whenever userspace has the gnss device open, but is not reading it fast
> enough for whatever reason.
> 
> Do not spam kernel logs just because userspace misbehaves.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

