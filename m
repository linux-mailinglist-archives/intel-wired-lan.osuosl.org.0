Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F51BA3AAD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDE0584317;
	Fri, 30 Aug 2019 15:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qIvs8Gr3O-0k; Fri, 30 Aug 2019 15:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38FA387E93;
	Fri, 30 Aug 2019 15:43:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC9EC1BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADA9588870
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dVvHo8uI9SIS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:43:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 39857887FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:43:51 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id v12so4875482pfn.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=IZK133rvLPFOXdT1nth00dyTGLOoSKiaU2rUxXtqO8Q=;
 b=t45Zb8MpRU4zl0yeD8VsoHrfDmDVKjnG1Vt0+zrLAFSEhHgvyTi3EA5JmQuo+h+UCZ
 HYlSYCz3636k8rhcABU/AwV6BB87hxv0Xm4Dpg8iZTDLR6Iew5JtbWfkxNWPL/gmlYZf
 B4DVGNgaTO2PBHtpqu5JGL2UjxLRqkGmG1jeAuIwOOllcV54IvFBm/tRqfCF6cFlA3w9
 Js9zj1NocQkVzxWyBc8HPzj7FhNX9Hxz3ytZPxoWkDhWP5FnCtKV8+drhJ7g3AhhILox
 80ujVW8YqnLyOrbXcVZYn5nHohKNL38RDBrGTITM7RIyBBcYszbqD3sBf+b01YBUl5By
 bZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=IZK133rvLPFOXdT1nth00dyTGLOoSKiaU2rUxXtqO8Q=;
 b=NOasDEkoc4aGTt1p5hql726czqc5gBRKq1sRkXNlKlh7FlFAHh5WMP5+FsiU5cJXpj
 a/zf4POcYae8+SEmjlSi58dTw1QEnNZCXTkN5DtEArqbT+FRSPcdLV4g4iCDL3gWWxtH
 ABPBjk8eMmNRoZekblkAJlC7OcVjChgGQLyiEatizVlUUaTKh9hi9KxrYp1jJRc02OvW
 dVuH+i7yo85xb/B6JCZypscDzo60y6K5WLSq5NjHVtVnd2esG5JIFjPOvq3pT92lBMo7
 /epPcp3w2UENUeMJtCc/+OtqKo5AOJWg3DfwoW2mcm73hyAFVPldd/MpMXsqz66daibw
 P0Fw==
X-Gm-Message-State: APjAAAXCjtt4T1mLyEgkSB/VG08IRe2eWf3nChpStvk1suBuQyJWGkFE
 Zi0BuwKlds8FqVx7bj6nXJY=
X-Google-Smtp-Source: APXvYqxsYGqcl9EsgZCqgSTKDVc8tStadrHPrGQVw2ILBQsdE6ZrKfTHvjq9qNPYym29KJVDyvCgqQ==
X-Received: by 2002:aa7:87d8:: with SMTP id i24mr18668241pfo.88.1567179830889; 
 Fri, 30 Aug 2019 08:43:50 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id r28sm3303447pfg.62.2019.08.30.08.43.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:43:50 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:43:48 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <E540DA62-B004-40B0-8FF0-7B6B44D500C4@gmail.com>
In-Reply-To: <20190827022531.15060-7-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-7-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 06/12] mlx5e: modify
 driver for handling offsets
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26 Aug 2019, at 19:25, Kevin Laatz wrote:

> With the addition of the unaligned chunks option, we need to make sure we
> handle the offsets accordingly based on the mode we are currently running
> in. This patch modifies the driver to appropriately mask the address for
> each case.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
