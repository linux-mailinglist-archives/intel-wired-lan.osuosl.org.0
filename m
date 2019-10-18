Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0529DCDEF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2019 20:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10A3086EC7;
	Fri, 18 Oct 2019 18:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 805Vntn29Ni0; Fri, 18 Oct 2019 18:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1883D86F0F;
	Fri, 18 Oct 2019 18:27:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0A91BF373
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 18:04:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 893FC85D26
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 18:04:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LitTNl-ShZg8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2019 18:04:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C86085C98
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 18:04:20 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id q12so5354203lfc.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 11:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BKUjV+Z8EIWRr9XKRO16itwdybPjb2TppEvKOrPVvaY=;
 b=RGBHDUmUZ1ITmUUSLWhZSbMyeS1zLC77pOvNV86RZhHJ4rLio+98SI7eTJucghGHUX
 OHjo4WueJbBqHPXFXTRDiAsSl93WmsVtdPScnk4x39sUHe1/ER0DJ/AkiZ7Vjn0BdLO9
 OZj+ty0J1oUr4YOWyT8kK8FkIFfLGr5P4fa7VeF4kAvxxBq9NFMPfdBXK00yu2Xahce6
 i0ftmLvPzUwx7xPP9u1roJnxu3bzV3NezAIiK8Qv3WBchtu4GpEJ+8pbWRAqiwStVCOG
 ViFIbeA3OcZojZOh75ieZja2oX2WjulFr0miTXiZ62ML4iv6PTf8mgQx1K8RjL5/KqVM
 LLRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BKUjV+Z8EIWRr9XKRO16itwdybPjb2TppEvKOrPVvaY=;
 b=jvzPApAbUnE+GYjDTo7wQ4Ep5SuV4o/xH9NJVfsimVubwK3mV1fNaXEnDcI7jZJMZ7
 9aIVZv3JbYkV1L/VKJWrH2CblEUyXO0hVWmK6xB+kcvo8/pksq7rkufaAdP+DWVn3K7M
 VOZTnYMg8eEfLnHHK14gDV4nULWh/Ajba1zgO+MYH/i6fS4qDnpkZgYYdIEhhJq05ylY
 OszBq3+Vf/1MDwQTdUVTz6q8n5JBLW6luGa2BQPA3+lL3LYvcc+/PimDBNqdVhr9ljDm
 btcMrMjcE+G5YvgK17IgSilA26zTk6JUTlQxtsUPJrTuxa/DENuVWWPLhbVkPfSoAEHr
 F4UQ==
X-Gm-Message-State: APjAAAWyOsTyKKbeJNCKqSf+mQ+9i8uV//ge2PKclNlo7J2FUqOdD7q1
 t8mC9Miv8nB8F7O0TUcATFeonaFox57FgG30Qk8=
X-Google-Smtp-Source: APXvYqydKQ3XrOVK/Viv5spkgoZJQQDzIeJevGNMor/Piny/H+CH0zei+4sdepQYFtFE9RP13lOzaaNIESAO2DNvg/0=
X-Received: by 2002:a19:c192:: with SMTP id r140mr2742158lff.48.1571421858326; 
 Fri, 18 Oct 2019 11:04:18 -0700 (PDT)
MIME-Version: 1.0
References: <1570812820-20052-1-git-send-email-johunt@akamai.com>
 <1570812820-20052-3-git-send-email-johunt@akamai.com>
 <a99acf6128404c54ba837e2b0afe1d98@intel.com>
In-Reply-To: <a99acf6128404c54ba837e2b0afe1d98@intel.com>
From: Josh Hunt <joshhunt00@gmail.com>
Date: Fri, 18 Oct 2019 11:04:06 -0700
Message-ID: <CAKA=qzZcO9vuJeuBhXd+25WHuMVHz1LbyCBngqhd0mQ3a0LF0g@mail.gmail.com>
To: "Bowers, AndrewX" <andrewx.bowers@intel.com>
X-Mailman-Approved-At: Fri, 18 Oct 2019 18:27:34 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3 2/3] ixgbe: Add UDP segmentation
 offload support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 17, 2019 at 5:33 AM Bowers, AndrewX
<andrewx.bowers@intel.com> wrote:
>
> > -----Original Message-----
> > From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> > Behalf Of Josh Hunt
> > Sent: Friday, October 11, 2019 9:54 AM
> > To: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Kirsher,
> > Jeffrey T <jeffrey.t.kirsher@intel.com>
> > Cc: Duyck, Alexander H <alexander.h.duyck@intel.com>;
> > willemb@google.com; Josh Hunt <johunt@akamai.com>;
> > alexander.h.duyck@linux.intel.com
> > Subject: [Intel-wired-lan] [PATCH v3 2/3] ixgbe: Add UDP segmentation
> > offload support
> >
> > Repost from a series by Alexander Duyck to add UDP segmentation offload
> > support to the igb driver:
> > https://lore.kernel.org/netdev/20180504003916.4769.66271.stgit@localhost.l
> > ocaldomain/
> >
> > CC: Alexander Duyck <alexander.h.duyck@intel.com>
> > CC: Willem de Bruijn <willemb@google.com>
> > Suggested-by: Alexander Duyck <alexander.h.duyck@intel.com>
> > Signed-off-by: Josh Hunt <johunt@akamai.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 24
> > ++++++++++++++++++------
> >  1 file changed, 18 insertions(+), 6 deletions(-)
>
> Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
>
>
Andrew, thanks for testing. Were you able to validate the igb driver?

Thanks
-- 
Josh
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
