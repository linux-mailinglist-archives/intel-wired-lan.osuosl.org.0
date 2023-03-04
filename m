Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C45D06AC600
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 16:56:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 518B8817AC;
	Mon,  6 Mar 2023 15:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 518B8817AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678118190;
	bh=BSbpvJNqZ5zetxOYbVnKl2weeU3r+WcGy46LpbCXjUg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7A55c/ZNse47eBeKW/nEK6BHTnzzvEEjCa6v3O+af9z1R8xOr9AsSNtJIgi408Bog
	 yy0725svIC2CG2W8sRoXn6VrfMvCRAKxChkFqe+NNhxz+kg4cf3HVfv0Muy8spWxvQ
	 DH9t/CYXT+yhZMNkaBYhfpsHOdhfYThxgWhoOt9exfBtl6xmkU1lib2LEZxl7DaaVg
	 iJbQUdbbBdv1xq7B/CvWI/Xmuoo/vYbk8jeBjSu6+FH462XHw1HZSwGon4fdqfqRHM
	 RiR934wDcUN+QAJ+9l2YO4WIOspLqS7BIi59h9SFnAnRbhkPDoRoUkQA/Fl5EW6bv5
	 MUEbBUZq0eThw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RFK43G_d_TAM; Mon,  6 Mar 2023 15:56:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D165481404;
	Mon,  6 Mar 2023 15:56:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D165481404
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C963C1BF853
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 17:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A106481A46
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 17:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A106481A46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkSi4qPt0_Op for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 17:03:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2424681A3E
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2424681A3E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 17:03:34 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id p16so3293502wmq.5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Mar 2023 09:03:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677949412;
 h=in-reply-to:references:cc:to:from:subject:message-id:date
 :content-transfer-encoding:mime-version:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=rRoRMVP6YkESKWZflhbN5LHdWG/p3LxNDdy/3uOEkCo=;
 b=f3tRGR6T8IVO1wu4e8jDjFWTM+GeS7ZxF0uNqxGg0y7KEUTpUrVZtwRoBqxMqWav2l
 gGOScICgB2BVAy/tvEIqeN9bFiadx/f8b72LEd9g5N9nhPupphDRUjf3s6pW2HuAETbS
 L95U5fh52pqm7Q+q6JF5u6DugY35RVzDC3avjILevUHu+/A1bt9d+yDRvKzHMeoQlNUN
 PliKJyP5JMRZH+3JBWoNIisDj4YX6YzN/qp4wTdnu3fDVO/oc1L8mPL8nhaRraLHJvXA
 ammqMIrNn8Yuawb2CIig3pAnyyhX0m92vVtPU6TsnhTj5Wp/J9lCMgqAv+UrXJXsH2V7
 lOGg==
X-Gm-Message-State: AO0yUKUcy81c7gOS1ZeG9CRe772StAH0TgcYHmqULLwVZFIujfIDEKXw
 8RGNWumiFuXjFjatmv/57Z8=
X-Google-Smtp-Source: AK7set84EZGTIEMvwi1GVX+Zt903jcqPWmtaeEUXvbr0HhyY67V3IS/JK9Ni4uyhSGHNsTdPKw64UQ==
X-Received: by 2002:a05:600c:3b05:b0:3ea:e7e7:95da with SMTP id
 m5-20020a05600c3b0500b003eae7e795damr4833932wms.8.1677949412003; 
 Sat, 04 Mar 2023 09:03:32 -0800 (PST)
Received: from localhost ([2001:b07:5d37:537d:5e25:9ef5:7977:d60c])
 by smtp.gmail.com with ESMTPSA id
 f13-20020a7bcd0d000000b003db01178b62sm9163050wmj.40.2023.03.04.09.03.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 04 Mar 2023 09:03:31 -0800 (PST)
Mime-Version: 1.0
Date: Sat, 04 Mar 2023 18:03:29 +0100
Message-Id: <CQXRF9CS3SAI.2TU7KF0UR6V7P@vincent-arch>
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Stephen Hemminger" <stephen@networkplumber.org>
X-Mailer: aerc 0.14.0
References: <20230304122432.265902-1-vincenzopalazzodev@gmail.com>
 <20230304080650.74e8d396@hermes.local>
In-Reply-To: <20230304080650.74e8d396@hermes.local>
X-Mailman-Approved-At: Mon, 06 Mar 2023 15:56:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677949412;
 h=in-reply-to:references:cc:to:from:subject:message-id:date
 :content-transfer-encoding:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rRoRMVP6YkESKWZflhbN5LHdWG/p3LxNDdy/3uOEkCo=;
 b=O69na9crOY5zAsw9EFw/FQ7POzIPLe12zx9IIDL3YwaRZm43kWeGQ0tTMqZn72k0Eb
 2cBHrKEXgOVCd1hD/YGnEl8+rFoZJgMg/sSqYn9Q0nynV3lpH84sg61DVV/qKPXvcIy/
 Sy0X4EquKLQJS2AmynBxZKagXeLyeJXc7O6f7zne04XuOnnWwrel54m3QREiGiN6/Sai
 NjnKmQewPihsEEwo/yqnbUJ8GniQNsrFtnuC6KXFmDk0TVhnHhDQi2mWJTfHgIqP8y55
 8heOugau9PBiD9Asn6ClRQss4QFZ9ETgu/JuJOuotjxEoe9pVyMwmTu52hTF1rpv/EI7
 992g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=O69na9cr
Subject: Re: [Intel-wired-lan] [PATCH v4] netdevice: use ifmap instead of
 plain fields
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, khc@pm.waw.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat Mar 4, 2023 at 5:06 PM CET, Stephen Hemminger wrote:
> On Sat,  4 Mar 2023 13:24:33 +0100
> Vincenzo Palazzo <vincenzopalazzodev@gmail.com> wrote:
>
> > clean the code by using the ifmap instead of plain fields,
> > and avoid code duplication.
> > 
> > v4 with some build error that the 0 day bot found while
> > compiling some drivers that I was not able to build on 
> > my machine.
> > 
> > Reported-by: kernel test robot <lkp@intel.com>
> > Link: https://lore.kernel.org/oe-kbuild-all/202303041847.nRrrz1v9-lkp@intel.com/
> > Signed-off-by: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
> > ---
>
> Patching cadaver drivers is not worth it.

Mh, what is mean? they are drivers that are not longer
mantained and/or used?

Cheers!

Vincent.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
