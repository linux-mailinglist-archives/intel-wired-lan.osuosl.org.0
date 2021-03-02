Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E7432A26B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 15:24:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AA9783EF9;
	Tue,  2 Mar 2021 14:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WAiIdMELSpQF; Tue,  2 Mar 2021 14:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1216183EF0;
	Tue,  2 Mar 2021 14:24:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3BD41BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 14:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F08D605D1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 14:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cc-ntBm7qVsk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 14:23:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DDDBE6009C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 14:23:54 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id dm26so1822295edb.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Mar 2021 06:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FRuUQq30ioibxh1s4bVwuehg8mtomzSVObPwas+DnIg=;
 b=IT5oSHASkikMtm5+s4mDKYrYKWItV+t92P4VfQoJ5Ou/G7Myg0EVwG+uHQpNNj6Cpm
 bPja5SqMGlNAcU+CwE3v03PJqJR6S0M57k+5OWSfEWx+HECvCSgJBNUAyqPFYgj0bgq+
 h8YhOx9ooxmr8z9nd2TvDMQ+O4BwWl0UvRJF506IVbuw3TvZ+srztEMMoKKF+mStKxVP
 uLLET1eOi2uiZKjYWcLdHKadCi9AhrOl33PsI8bBCMYhwTY+BZX3fMhJLUW/z14Qv+Z7
 5NV8czCy4ASTeDlpewvnTBX8Q5XpQiKu6Zd+w4NNbQV6cJXvpiB773YlH6y43fOxyqFy
 PsSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FRuUQq30ioibxh1s4bVwuehg8mtomzSVObPwas+DnIg=;
 b=kVU/pwT0P/0Se49kORVlm4rT7s0Pejx0jv/5W9ZOD7NQNECiw+CrU1QFjm8ilG9J3L
 ElbE80lVO10K3srmRDNZI22U94mWIXfTKEIXwGudjDf/5COs4ahZ+FiJdj9t9wnhNS5y
 IYXyobTRfNqsXtf2qVhrC0ocxzQWJHLPcGNYjOAcHBO4GlnwwSmDVr+P3EkHN62zcSdn
 ekyl9clH0QMpROb/Q7N2L9bib+AdOyFaFETvwaZofboEq/qhw/ZbTwV1oPdoRZi4uH+F
 qvuSwEPzORg6WAyL4mr/CiWw6TRwU/YtKvujYvIb4fJCA2slGAggdWO+487HxccTcJSe
 SENQ==
X-Gm-Message-State: AOAM532xFkdtjAQiWHTpGvp2LKMWECwASCr9T3T3SH04AjXXL5fwHzTl
 q8F2brTMXi4FYBPKsYcOOs0=
X-Google-Smtp-Source: ABdhPJw3mteegPMDsRKGbXh6fddEUQcBDDITsXRT7DkQclbrm5uBo95Lgwv1KjRNXaPARhzFTxhSEg==
X-Received: by 2002:a05:6402:b70:: with SMTP id
 cb16mr19522696edb.11.1614695033027; 
 Tue, 02 Mar 2021 06:23:53 -0800 (PST)
Received: from skbuf ([188.25.217.13])
 by smtp.gmail.com with ESMTPSA id x17sm18854567edq.42.2021.03.02.06.23.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Mar 2021 06:23:51 -0800 (PST)
Date: Tue, 2 Mar 2021 16:23:50 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210302142350.4tu3n4gay53cjnig@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-2-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210122224453.4161729-2-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/8] ethtool: Add support
 for configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, xiyou.wangcong@gmail.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 po.liu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

On Fri, Jan 22, 2021 at 02:44:46PM -0800, Vinicius Costa Gomes wrote:
> Frame preemption (described in IEEE 802.3br-2016) defines the concept
> of preemptible and express queues. It allows traffic from express
> queues to "interrupt" traffic from preemptible queues, which are
> "resumed" after the express traffic has finished transmitting.
> 
> Frame preemption can only be used when both the local device and the
> link partner support it.
> 
> Only parameters for enabling/disabling frame preemption and
> configuring the minimum fragment size are included here. Expressing
> which queues are marked as preemptible is left to mqprio/taprio, as
> having that information there should be easier on the user.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---

I just noticed that the aMACMergeStatusVerify variable is not exposed in
the PREEMPT_GET command, which would allow the user to inspect the state
of the MAC merge sublayer verification state machine. Also, a way in the
PREEMPT_SET command to set the disableVerify variable would be nice.

Do you still have the iproute2 patch that goes along with this? If you
don't have the time, I might try to take a stab at adding these extra
parameters and resending.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
