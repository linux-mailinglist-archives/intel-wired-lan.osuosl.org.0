Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1E7FA16F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2019 02:58:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 654F98496B;
	Wed, 13 Nov 2019 01:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YaNsBYjObzp8; Wed, 13 Nov 2019 01:58:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FAF885D8E;
	Wed, 13 Nov 2019 01:58:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0811BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 01:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 17D96203AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 01:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qdyYvRwNMkRp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2019 01:58:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 79FB020363
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 01:58:12 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id q17so273828pgt.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 17:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ErICr6JI+G92Aq/PhmnRfpbf4tU7/Z3yZ1NnGPcjERY=;
 b=CWtnxh9/7QqPXSEXyDX9v6pJ6UVvvjfQ4SCp2/erTZyV2TVEpC8A9VDP0s8Ektm74L
 mE7EZxijYXuNnYVGO7uu7JXWa4Wu+aoZpG2bZjDpfLn5HgMey6/TOj5gLN3GtfdmR32B
 ceGpbeey/4PnRgNyWxgojbP1TWtdM3HXP040y38noPA+JSsJtakOkl1Ua1p22hwlMRDN
 2Hxf28MZVJEsd0l0wRcAjv97JYEJllC2GgaFxC/rTlyyVvfStFReViG1ksuPPStZRkdK
 Y7UVzJ0T+n35H6wViLnp7JqYGjBemUCd1ToDGn29O/YtotqGHDv5EWp3Ow0PQZ9N2Zq/
 jpig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ErICr6JI+G92Aq/PhmnRfpbf4tU7/Z3yZ1NnGPcjERY=;
 b=AUjtr80piNyMkf3DyH1xiSdCWuinSP4ffp9aTfU/QOCYTpuCF3gEoTmv+me5RnWQ/x
 Ye9mwwr8VCHBDbCsHsi72yb1wIv+DbB2mPYrneab8hFL37neU84ShwTIkIODAeyIVFhD
 LgpBZbPKR6EOT/sM8E4ZeNHKpYtTGMnJKmTcIGLW99hKsbgAorbYuM39kQ+Sc9BZZ/6z
 bwR+7UFdZGTDK3SRI3zPRYYogg5+cN08SIwhsMnUTecQvhkJ+Q9Oc+7uYoxJpcQ5ZFzm
 75MbgzOAIsIXDFUhO9PtA6cCcjY8JsxsczMH6JH4rhllv35cgKQkmgXGx2F4mQPcxlTE
 aoqA==
X-Gm-Message-State: APjAAAWmV29ChlSzr5lgJeQ9CuU3CPxYQbb4QhKIelfpck1pcY6JAHaS
 u5ZZw1q8s5IlFRqirxP0R48=
X-Google-Smtp-Source: APXvYqzwceHIeMv6Y3rNMELiKOVpraUyzWKVeKpGMb9TiQNocT8B0330Kn8SxE6Jr26F3baPS2kODQ==
X-Received: by 2002:a17:90a:3808:: with SMTP id
 w8mr1235837pjb.143.1573610292057; 
 Tue, 12 Nov 2019 17:58:12 -0800 (PST)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id w69sm273741pfc.164.2019.11.12.17.58.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 17:58:11 -0800 (PST)
Date: Tue, 12 Nov 2019 17:58:09 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191113015809.GA8608@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926181109.4871-1-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 0/7] new PTP ioctl fixes
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
Cc: netdev@vger.kernel.org, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jacob,

On Thu, Sep 26, 2019 at 11:11:02AM -0700, Jacob Keller wrote:
> Jacob Keller (7):
>   ptp: correctly disable flags on old ioctls

This patch made it into net, but ...

>   net: reject PTP periodic output requests with unsupported flags
>   mv88e6xxx: reject unsupported external timestamp flags
>   dp83640: reject unsupported external timestamp flags
>   igb: reject unsupported external timestamp flags
>   mlx5: reject unsupported external timestamp flags
>   renesas: reject unsupported external timestamp flags

.. these did not.

There is still time before v5.4 gets released.  Would you care to
re-submit the missing six patches?

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
