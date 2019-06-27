Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D1258D05
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2019 23:25:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F92687475;
	Thu, 27 Jun 2019 21:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mjy8I0j6-aiR; Thu, 27 Jun 2019 21:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FB9B874D4;
	Thu, 27 Jun 2019 21:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D85891BF399
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 21:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D2F0687EAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 21:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3kW6JWcCi67a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2019 21:25:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4BB6F87EA8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 21:25:41 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id j19so4078978qtr.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 14:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=ElQV/u013YOYWC11HkhStHYWBt87I6cc9bNTnf9Bdm4=;
 b=T36dbXKHxrwS69Q8gWHCjPoYPosyIUxHjwSqCIVOfyO4WiE82BX195TJ72d+IEhMjX
 26FLfVumUjwSrLC7/ffZG1PiBC2KqW2YSpJPtRbZe132rdMRXDmxSJW9pyJEvZV5M1wQ
 nCvPyoCxtEH7xXAwwUhUM+3YPoWpZZSU8tjNe4uRm+0+q8WfK3e9HlVE/AwxEXe5y39o
 iFWiE9nwMPbJ8J8EREMeFlFN/csiLebu41M1Uq4EsMCwV2pFzpPWyegu1brWuuPU75Dl
 uU41vf4l0tKzEgOyZA/6tXwIZnEWbMzlnyi8Soe3cZeV0A7B8/bLIUT+gvV/87HcYs9Z
 uqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=ElQV/u013YOYWC11HkhStHYWBt87I6cc9bNTnf9Bdm4=;
 b=TemMHuDBDxQ/uKUQ0Dvi+n9Uz4eFT6NVNlbsf+WLOE5EDCsZ+St5YjtpH4KA1EywRx
 sfVq+3LKkdguAFc+SgaUkAiqhlGdSYXNFMi/c/Q/+iX6w4qdpqpKDCMc7uB6nxV2mwk4
 goQNU2VUMhK7c5LBKdZkL2gjpYVBKNe88Q3BvKk9tsgb4/o1JJlAv2PFlYaEMqzDz1Ru
 wry54dN/utdAEhIg7TA85jbQYsgQl268GGUVZ0auHy4ynXJZ/9YMFs7wBOXG2gT8ZIsJ
 wvqUA3rFSfAT3Ol9eustEo6kbbS2JRrlKFSdeHanKN2ZXE1HFTY67jf2sMLrT+b7XCZ9
 839g==
X-Gm-Message-State: APjAAAUn9V40/GfxSMoLl72TLAP8o/LKprlwSgsB4BO6TGhm9z1cyHim
 vWImu2vhedCe2eso3bdlhxeTVg==
X-Google-Smtp-Source: APXvYqwS3c8fznhmB0uVN5y7M83pNsjbPuQ5eVwA9n13yNBMIwZrFANycsCBrJoFsUI+f0arYexlmQ==
X-Received: by 2002:a0c:880b:: with SMTP id 11mr5066098qvl.185.1561670740197; 
 Thu, 27 Jun 2019 14:25:40 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id v17sm160765qtc.23.2019.06.27.14.25.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 14:25:39 -0700 (PDT)
Date: Thu, 27 Jun 2019 14:25:34 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <20190627142534.4f4b8995@cakuba.netronome.com>
In-Reply-To: <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: daniel@iogearbox.net, bpf@vger.kernel.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bruce.richardson@intel.com,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 27 Jun 2019 12:14:50 +0100, Laatz, Kevin wrote:
> On the application side (xdpsock), we don't have to worry about the user 
> defined headroom, since it is 0, so we only need to account for the 
> XDP_PACKET_HEADROOM when computing the original address (in the default 
> scenario).

That assumes specific layout for the data inside the buffer.  Some NICs
will prepend information like timestamp to the packet, meaning the
packet would start at offset XDP_PACKET_HEADROOM + metadata len..

I think that's very limiting.  What is the challenge in providing
aligned addresses, exactly?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
