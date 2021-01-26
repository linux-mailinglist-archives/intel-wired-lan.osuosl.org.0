Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D61530496F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 21:01:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 31C5320509;
	Tue, 26 Jan 2021 20:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4TG4xWw1cXm; Tue, 26 Jan 2021 20:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0B25020018;
	Tue, 26 Jan 2021 20:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1CE1BF973
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 20:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8891585D35
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 20:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1vjI9AsG6bsO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 20:00:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EA3685CFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 20:00:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8EA8422A83;
 Tue, 26 Jan 2021 20:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611691256;
 bh=NZrdI3qvwW4PuR6HD536+3cUT4dXOETclLICtwlAUDk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e/1t+Fh1EFODYm/5rTTvwwmhkMbuRmbbVBVY3WAVzF0Rd7DZ2Z4FMfUcqEzYYysLS
 RA2TFLz7rA5VaGIAMFMWhf75HpVnn8K8nhm0UXtLk31DAhzvO8qCZxH3lbbqaVr0QI
 9iAy7W14T6EoZdmA2nMvWD+mviPQrwLyOLYUIWNLu8Np8DmPEV2qJ8lbSVC32FFvcX
 Pu74kClppF+7Q9JRlKgIh2FoWk/R8/uzfc+vBIgjLoB27j04TXEoRwLxQkhOIBVLC0
 lBzGgjj738+w+1gewrzB5xJUP03UoJD1HgnUyICyPnhPmrNYBv4hgp6ULCHxuP2xFQ
 5iUFd2er9XEIA==
Date: Tue, 26 Jan 2021 12:00:55 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Corinna Vinschen <vinschen@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210126120055.001934db@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210126103037.GH4393@calimero.vinschen.de>
References: <20201117195040.178651-1-vinschen@redhat.com>
 <20210126103037.GH4393@calimero.vinschen.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] igc: fix link speed advertising
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 26 Jan 2021 11:30:37 +0100 Corinna Vinschen wrote:
> Ping?
> 
> It looks like this patch got lost somehow.  Without this patch,
> setting link speed advertising is broken.

Adding Intel maintainers.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
