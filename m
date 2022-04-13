Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E15FD4FFB8A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Apr 2022 18:41:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E4B361122;
	Wed, 13 Apr 2022 16:41:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QfikQHkwcJ6V; Wed, 13 Apr 2022 16:41:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61B1361126;
	Wed, 13 Apr 2022 16:41:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D529D1BF9A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 16:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0A4C6111C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 16:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdJBG1PEiw1S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 16:41:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E18E161104
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 16:41:44 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id z16so2492117pfh.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 09:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=U0mYbeDxiP5fHUbrg4sKbHdXRde2/HGpSIrFIzyQPyY=;
 b=mOkQZp4B9v+XiUJyjo6qJzUPdPuVRegkA5c31EeT93Vjn4N+jtRG0TpVRQRbEDkQR8
 Ev0pKTeaBfXvKKuffvCAsHJQC8FOsGbAK3TvZquX8uQ4TSSax1VS/ZXE1/yijKXvdfyo
 8V+okUq7jGM5tnLmkPqE4DQYPEchgh4x4wG80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U0mYbeDxiP5fHUbrg4sKbHdXRde2/HGpSIrFIzyQPyY=;
 b=rMswB/PC5xGo4kYxvh4+FYu3MYLuTGFmdVeWIT1M+K0hhjX0mYr9PzqhT2O93hr7vE
 4+2BhIwmVJuhYso0sXeEQl9MAYfRD3rc/Mjs0g6RBqWTLF3dX2F/974QMHuxlco2L+G9
 iyqs+swt0k2B3hIxo/YnctaTgPwwHtVyBzSfuVq/OdYGnn3WGxyGZ4c9eQ7P43nEqT8z
 tDuDUW2KxreW8mCxKlmgknDkn3zOq8PdndNn5gmjZoxnCEF6iI481j1LDIISpjfERpOC
 ZELOQtxuIaGkuYT3DhYnsJX2FSBE5aK3KLKn3dKw9xPcCJzPXafqllAYgABjyyargOqh
 Jwew==
X-Gm-Message-State: AOAM5302lPTZeB7vOsYTlEuBu/qRgeXEptinAdJSNdO/Dx9t2idEYics
 g9b2ZXd8oDldf0o5duZnJB/LWA==
X-Google-Smtp-Source: ABdhPJxwzzFHl0F7a53iggWl2r6N+6mTqaFE64Ha6gudvaBnmGCDEvrtLjcahaXz4Ga08iENIgqL1w==
X-Received: by 2002:a63:b66:0:b0:39c:ef72:bb70 with SMTP id
 a38-20020a630b66000000b0039cef72bb70mr24072892pgl.354.1649868103895; 
 Wed, 13 Apr 2022 09:41:43 -0700 (PDT)
Received: from fastly.com ([198.233.245.70]) by smtp.gmail.com with ESMTPSA id
 w23-20020a17090a029700b001cbaff492f2sm3511394pja.30.2022.04.13.09.41.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Apr 2022 09:41:43 -0700 (PDT)
Date: Wed, 13 Apr 2022 09:41:41 -0700
From: Joe Damato <jdamato@fastly.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20220413164140.GA9392@fastly.com>
References: <202204140015.MRcE3hbT-lkp@intel.com>
 <bcdfdf24-bd8c-f487-5a26-88ee0b1bdb43@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bcdfdf24-bd8c-f487-5a26-88ee0b1bdb43@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-wired-lan] [tnguy-next-queue:dev-queue 235/256]
 drivers/net/ethernet/intel/ice/ice_txrx.c:1971:16: error: redeclaration of
 'protocol' with no linkage
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 13, 2022 at 09:40:24AM -0700, Tony Nguyen wrote:
> 
> On 4/13/2022 9:35 AM, kernel test robot wrote:
> >tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
> >head:   faadd15618a12d7b11208f11c54d6ac0f2776486
> >commit: 5d4c82c60dd05a844ff582c2c6d4e8c3c3020ebc [235/256] ice: Add mpls+tso support
> >config: powerpc-buildonly-randconfig-r003-20220413 (https://download.01.org/0day-ci/archive/20220414/202204140015.MRcE3hbT-lkp@intel.com/config)
> >compiler: powerpc-linux-gcc (GCC) 11.2.0
> >reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=5d4c82c60dd05a844ff582c2c6d4e8c3c3020ebc
> >         git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
> >         git fetch --no-tags tnguy-next-queue dev-queue
> >         git checkout 5d4c82c60dd05a844ff582c2c6d4e8c3c3020ebc
> >         # save the config file to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=powerpc SHELL=/bin/bash drivers/net/ethernet/intel/ice/
> >
> >If you fix the issue, kindly add following tag as appropriate
> >Reported-by: kernel test robot <lkp@intel.com>
> >
> >All errors (new ones prefixed by >>):
> >
> >    drivers/net/ethernet/intel/ice/ice_txrx.c: In function 'ice_tso':
> >>>drivers/net/ethernet/intel/ice/ice_txrx.c:1971:16: error: redeclaration of 'protocol' with no linkage
> 
> Hi Joe,
> 
> You can ignore this, this was a mistake on my part and I've fixed it.

No worries; thanks for letting me know.

Thanks,
Joe
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
