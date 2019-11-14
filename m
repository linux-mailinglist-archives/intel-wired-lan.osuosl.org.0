Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E62D6FCEDF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 20:44:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A62CC881FF;
	Thu, 14 Nov 2019 19:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V07nq-Wiusya; Thu, 14 Nov 2019 19:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C39088207;
	Thu, 14 Nov 2019 19:44:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DE131BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49D1F88A5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:44:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJpaO+e7l4qw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 19:44:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B076E88A4A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:44:13 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id k13so4452683pgh.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 11:44:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UxYG/57iLMubn4LlBk0ulBcjGkBpjy3pbOE++zvxyCE=;
 b=bJo9nwA7XsibXpq5PpAEGuqDiMN0jBhRKe/YuEkMUTHklAwG/y2q6Y8Ag47kMxSBc8
 e5qhXTHv+ixsbJi4hZhuX7DYn9UU98ddfBHcIbS8Xp4iGS61CZO1sBUESI+8Ngukr5wu
 m/hpnzkd1x/DqVi1HffLsCt4UduJxjHbk2OUGPV1QY/9e+q2zces6wXyBkpzYQqj4sfI
 LBjKy9KULjVFX0/4WmGzNlJO5xKnC/gaqyt9UEIE2BZNlb7QxC1VpUshyEcSM4K8VA09
 9w+wF+9xFH4g1pyvTcrWF/L66ZtMiCAi/b3Weurv7dtdpM+lz6p3OX13dcMeSARqozD4
 ORgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UxYG/57iLMubn4LlBk0ulBcjGkBpjy3pbOE++zvxyCE=;
 b=p/WdeOTwff55HptuaMlfyXx3QjEy4UBHV8r0SbOECGYZTV/XIM6S1tV0v+wGzqQKaZ
 cNHW+jG2vUBYCFHons6kZffCdTCNhObcj0ZfPboXAu2USafX3VIfOQ82Q7Z3Hk+F3dVT
 jcrd2fBHWFLUewVz2WocBzmfRxpsI0olTpRnwFlrwd0hi5hia89v2AVUrh9B4+HlqnT/
 9XtJF8g3OVoZ694Q9+uCGnB/OaDaaqJ9FV3XgubLUtgUKcD2vg8o5uBwfkwDQJUwW8i+
 mrMkd75FNxStKE8z4Qr23B5jqaAhlfpVip5IR+lpoezGWdRrSa4Ay04kdPf98aiewdCC
 KZ9Q==
X-Gm-Message-State: APjAAAWey3rUt+yycrnXdw70ozW+21xQ7v/UVzLEIMqR5GOj1Bsa+a8H
 a/g1WEFfnZC29rsDz2ymjQE=
X-Google-Smtp-Source: APXvYqyEsxYpA+m+I8aTKPYj5UzvtdQ6xrIVfGQT4GM3i0GZn6NUeDs123URgqKMFnZQMyrWVHMWhQ==
X-Received: by 2002:a63:1e0d:: with SMTP id e13mr2962265pge.166.1573760653295; 
 Thu, 14 Nov 2019 11:44:13 -0800 (PST)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id u7sm7269675pfh.84.2019.11.14.11.44.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 11:44:12 -0800 (PST)
Date: Thu, 14 Nov 2019 11:44:10 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20191114194410.GB19147@localhost>
References: <20191114184507.18937-9-richardcochran@gmail.com>
 <02874ECE860811409154E81DA85FBB589698F6E0@ORSMSX121.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02874ECE860811409154E81DA85FBB589698F6E0@ORSMSX121.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net 08/13] ptp: Introduce strict
 checking of external time stamp options.
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Feras Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Eugenia Emantayev <eugenia@mellanox.com>, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 14, 2019 at 07:12:38PM +0000, Keller, Jacob E wrote:
> So, this patch adds the flag *and* modifies the drivers to accept it, but not actually enable strict checking?
> 
> I'd prefer if this flag got added, and the drivers were modified in separate patches to both allow the flag and to perform the strict check.. that feels like a cleaner patch boundary.
> 
> That would ofcourse break the drivers that reject the strict command until they're fixed in follow-on commands.. hmm

You are right, but if anything I'd squash the following four driver
patches into this one.  I left the series in little steps just to make
review easier.  Strictly speaking, if you were to do a git bisect from
the introduction of the "2" ioctls until here, you would find drivers'
acceptance of the new flags changing.  But it is too late to fix that,
and I doubt anyone will care.

IMHO it *is* important to have v5.4 with strict checking.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
