Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8E62BABB2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Nov 2020 15:16:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AB91F20397;
	Fri, 20 Nov 2020 14:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ZRdWSNoe5-K; Fri, 20 Nov 2020 14:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 037522E0EC;
	Fri, 20 Nov 2020 14:16:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABFC21BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 14:16:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 959E22E0E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 14:16:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3L7JYHUNdgat for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Nov 2020 14:16:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by silver.osuosl.org (Postfix) with ESMTPS id 0501B20397
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 14:16:24 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id v21so7411813pgi.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 06:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KEjEGhmEzvhfjxAnQoE9R0iga9goTRtUqlUhzJyg2qQ=;
 b=rmu5CylR6oML6jLJKaGGZylZYDXpFUleODzdx8ODXqkwL5ZbtvJrM7cTSVI8T8uVxE
 P+Unb1Nhc/bMtsDzbttn263z0bjakrJ8R0D1Xcs16DM2HZUdYI/dUfeiJGJYY0P3hhu1
 odVny6iLsWsR70vTyW5khgYoMf8rap8qAD7SxwU3kSiCTcthD6k7fQDL2ZDYB1EWjzzx
 xlxXFTC9DpGqALn7JBUNdJHRlmo/MQtKB7pZ9yCvZSeNG7CAbG/hAFrUfByLlc+md6uw
 xprRB8DTj6TdDZRK/9q/8dpwUdawbsq6TK8Wj5qwnOt0SCObdL4cj3ciw3/jScClA8H1
 9F6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KEjEGhmEzvhfjxAnQoE9R0iga9goTRtUqlUhzJyg2qQ=;
 b=Me2H47i0i7Eeap9s2t9/q2eq8pvHbjrJlMJP/bnM3rcMJooYMvk+kIGOtaAPsHMXvH
 LnG/+nY2+vgJwKXeKYpvIpbTtNpFSQK+wruDfFzNDpbMTsgjEZ7LZXaRaTRzoyztFsId
 cEldEYQ1kwfO6FmaWPBwtzFGZnwvLk4qHZkWFowz03kB3oukS2nfjj3z1STdY0Ek6g8E
 q6cFjOmENnI9q4OicBmt+FhiWvDkOaXsBX6jnV0qb98K27XYQsliVVkD2jUCUW8LKSKc
 c9Ow79bd/Wpyi0Iub1kuyQgN81kFnm9OjVvsV+6AYNpSp3xbmKou6/1k0FC0MVscmDzY
 IJmg==
X-Gm-Message-State: AOAM533n8hCT94MCfRijswoCqe+KCJIwMnQlemD/uCkseJFPWromnISE
 7dwRzXLKNzFzVeauxiecxCU=
X-Google-Smtp-Source: ABdhPJwSl/mRXdT+kWI2/PMGP7CwOB4vp2FCA92dJObq/nTTfL/VbZmWq8QnHEv9bdX+qhsZ+aCKxw==
X-Received: by 2002:a63:ca0a:: with SMTP id n10mr17143580pgi.326.1605881784581; 
 Fri, 20 Nov 2020 06:16:24 -0800 (PST)
Received: from hoboy.vegasvil.org (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id kr2sm3984871pjb.31.2020.11.20.06.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Nov 2020 06:16:23 -0800 (PST)
Date: Fri, 20 Nov 2020 06:16:21 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201120141621.GC7027@hoboy.vegasvil.org>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com>
 <20201117014926.GA26272@hoboy.vegasvil.org>
 <87d00b5uj7.fsf@intel.com>
 <20201118125451.GC23320@hoboy.vegasvil.org>
 <87wnyi2o1e.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wnyi2o1e.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 18, 2020 at 04:22:37PM -0800, Vinicius Costa Gomes wrote:

> Talking with the hardware folks, they recommended using the periodic
> method, the one shot method was implemented as a debug/evaluation aid.

I'm guessing ...

The HW generates pairs of time stamps, right?

And these land in the device driver by means of an interrupt, right?

If that is so, then maybe the best way to expose the pair to user
space is to have a readable character device, like we have for the
PTP_EXTTS_REQUEST2.  The ioctl to enable reporting could also set the
message rate.

Although it will be a bit clunky, it looks like we have reserved room
enough for a second, eight-byte time stamp.


	struct ptp_clock_time {
		__s64 sec;  /* seconds */
		__u32 nsec; /* nanoseconds */
		__u32 reserved;
// four here
	};

	struct ptp_extts_event {
		struct ptp_clock_time t; /* Time event occured. */
		unsigned int index;      /* Which channel produced the event. */
		unsigned int flags;      /* Reserved for future use. */
		unsigned int rsv[2];     /* Reserved for future use. */
// eight here
	};


You could set 'flags' to mark this as a time stamp pair, and then
stuff the system time stamp into rsv[2].

Thoughts?

Richard


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
