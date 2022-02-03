Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 430114A7F13
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 06:26:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3F8660D59;
	Thu,  3 Feb 2022 05:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3lFjNuPrgP20; Thu,  3 Feb 2022 05:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AEE560745;
	Thu,  3 Feb 2022 05:26:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F99E1BF870
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 05:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 184774011B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 05:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D-m6BF1_mo2c for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 05:26:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B4035400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 05:26:24 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id z4so3609952lft.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Feb 2022 21:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ddfFznydds3zNOCqJrwlGUSV/emehWuiRdAQynCn8ms=;
 b=SInswz34Wde2kRH6ghsyFwhOzmBe2zhHRsmWfn7vOg8PbsCgFYsyiZG/XSnSgOPSM6
 rr7cRpRhsp9uBbZGlZKJFMJoB2In9I37B2oMeHrLqpA/g7sKwgcmsrnfxhfoXduucbEd
 kuXjJn4DsdZLWDPOt5ivmHyxtDECgpaNtkEYdpkM566h9s5eNTifTAllTa5AQdHL7Zh1
 8+1rG1BXiLIwCnT6A9PpX2EqcmGF2CCpN9WVKXAWXg3nYrv0bWKxtDXRdnRDPKSJLDQL
 Xxp6FLqatvZUq5KZiJmXNEqwegzt1FrItI4L0Dk0ecNbMTsbzIODTtACZ9RKtFbXeCua
 dVCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ddfFznydds3zNOCqJrwlGUSV/emehWuiRdAQynCn8ms=;
 b=Dgo1gTcvBXN9++Xfzc788KINv/XZVw/n5OpXAfsnwi210mNbl3zBbj7W2Uit/QhQIS
 ftDQlPN02FEZ8bsdVwDoOuM0Oj9RJs4+S1QlgmaM728SgCAFOaut9emEG6LowFkONXeP
 nIPopctmd5opOC08IjkRELG2H+rLBg6Egl7kxyaf6aYBK+Em7dUdTpGKihxdn6VybG2k
 yDCBpi7hdTbXB5EfWJo36RRWpMMZhsGkhXY72PgTD5r/OqFIfbXkYKrdTx/NL8oVXETs
 ARpudbPfiGkOy14R+F9QRq5ThjzKXGvSrsbAvuZawHxPxD+dcQDwdMh/FtDiBDaMgPc0
 gMNw==
X-Gm-Message-State: AOAM533V6040zVPIS8jT76X64PtALcnToFMpEhBcta+g+2srEmYqo6v2
 IPeNB0qgE2BikFQgu2IeBdpbtAUXeJK5Z5hc4lA=
X-Google-Smtp-Source: ABdhPJzhnigo7Q/0FtAV3Nx+d2Zv4B6dEtKR7zuBIpG3Y5LgIuTAFtA5h8wOFfwxi7Rowypd8PtPJWFhK5ExuX2K3kE=
X-Received: by 2002:a05:6512:398d:: with SMTP id
 j13mr25657298lfu.251.1643865982439; 
 Wed, 02 Feb 2022 21:26:22 -0800 (PST)
MIME-Version: 1.0
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-5-alan.brady@intel.com>
 <CAP-MU4MB=vAFb7B92yhx+CfX+NnRSJNzA3HH_X9geMaR6p4RTg@mail.gmail.com>
 <CO1PR11MB518657515DD2AEBF539B9B768F289@CO1PR11MB5186.namprd11.prod.outlook.com>
 <CO1PR11MB518632ED417B553A3CF06F2C8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB518632ED417B553A3CF06F2C8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Wed, 2 Feb 2022 21:26:10 -0800
Message-ID: <CAP-MU4N1b1Dj6LT=hunEapMscS_+QxttF5ehv8DAdqU=DkbM6A@mail.gmail.com>
To: "Brady, Alan" <alan.brady@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
 controlq init
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 2, 2022 at 7:40 PM Brady, Alan <alan.brady@intel.com> wrote:
>
> > -----Original Message-----
> > From: Brady, Alan
> > Sent: Wednesday, February 2, 2022 7:25 PM
> > To: Shannon Nelson <shannon.lee.nelson@gmail.com>
> > Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Burra, Phani R
> > <phani.r.burra@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> > Linga, Pavan Kumar <Pavan.Kumar.Linga@intel.com>
> > Subject: RE: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
> > controlq init
> >
> > > -----Original Message-----
> > > From: Shannon Nelson <shannon.lee.nelson@gmail.com>
> > > Sent: Tuesday, February 1, 2022 1:27 PM
> > > To: Brady, Alan <alan.brady@intel.com>
> > > Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Burra, Phani R
> > > <phani.r.burra@intel.com>; Chittim, Madhu
> > <madhu.chittim@intel.com>;
> > > Linga, Pavan Kumar <pavan.kumar.linga@intel.com>
> > > Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init
> > and
> > > controlq init
> > >
> > > On Thu, Jan 27, 2022 at 4:35 PM Alan Brady <alan.brady@intel.com>
> > > wrote:
> > > >
> > > > Initializing device registers is offloaded into function pointers given
> > > > to iecm from the dependent device driver for a given device, as offsets
> > > > can vary wildly. This also adds everything needed to setup and use a
> > > > controlq which uses some of those registers.
> > > >
> > > > At the end of probe we kicked off a hard reset and this implements
> > what's
> > > > needed to handle that reset and continue init.
> > > >
> > > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > > ---
>
> <snip/>
>
> > > > +/**
> > > > + * iecm_ctlq_add - add one control queue
> > > > + * @hw: pointer to hardware struct
> > > > + * @qinfo: info for queue to be created
> > > > + * @cq_out: (output) double pointer to control queue to be created
> > > > + *
> > > > + * Allocate and initialize a control queue and add it to the control
> > queue
> > > list.
> > > > + * The cq parameter will be allocated/initialized and passed back to the
> > > caller
> > > > + * if no errors occur.
> > > > + *
> > > > + * Note: iecm_ctlq_init must be called prior to any calls to
> > > iecm_ctlq_add
> > > > + */
> > > > +int iecm_ctlq_add(struct iecm_hw *hw,
> > > > +                 struct iecm_ctlq_create_info *qinfo,
> > > > +                 struct iecm_ctlq_info **cq_out)
> > > > +{
> > > > +       bool is_rxq = false;
> > > > +       int status = 0;
> > > > +
> > > > +       if (!qinfo->len || !qinfo->buf_size ||
> > > > +           qinfo->len > IECM_CTLQ_MAX_RING_SIZE ||
> > > > +           qinfo->buf_size > IECM_CTLQ_MAX_BUF_LEN)
> > > > +               return -EINVAL;
> > > > +
> > > > +       *cq_out = kcalloc(1, sizeof(struct iecm_ctlq_info), GFP_KERNEL);
> > > > +       if (!(*cq_out))
> > > > +               return -ENOMEM;
> > >
> > > You might keep this as a local variable until you get to a successful
> > > end, then set *cq_out when done.
> > > Else, you need to be sure to clear it back to NULL on error return to
> > > be sure no one uses a bogus value.
> > >
> >
> > This one I'm not sure I follow.  If it's NULL we fall into the if(!*cq_out) and
> > don't need to set it to NULL (it already is?). If it's not NULL then we go on to
> > use it like a valid memory address so I hope it's valid.
> >
> > > > +
> > > > +       (*cq_out)->cq_type = qinfo->type;
> > > > +       (*cq_out)->q_id = qinfo->id;
> > > > +       (*cq_out)->buf_size = qinfo->buf_size;
> > > > +       (*cq_out)->ring_size = qinfo->len;
> > > > +
> > > > +       (*cq_out)->next_to_use = 0;
> > > > +       (*cq_out)->next_to_clean = 0;
> > > > +       (*cq_out)->next_to_post = (*cq_out)->ring_size - 1;
> > > > +
> > > > +       switch (qinfo->type) {
> > > > +       case IECM_CTLQ_TYPE_MAILBOX_RX:
> > > > +               is_rxq = true;
> > > > +               fallthrough;
> > > > +       case IECM_CTLQ_TYPE_MAILBOX_TX:
> > > > +               status = iecm_ctlq_alloc_ring_res(hw, *cq_out);
> > > > +               break;
> > > > +       default:
> > > > +               status = -EBADR;
> > > > +               break;
>
> Ah wait I think I understand, if we end up in error state later in the function like here we probably shouldn't be giving the memory back to the caller.  Will fix.

Right.  If you store the pointer in a local variable first, then you
can do the final assignment to *cq_out at the end once you know that
all is done and safe.

Some folks might thinik that at the end they could just set *cq_out
back to NULL if there was an error, but I think it is safer and less
of a surprise to leave the caller's data alone until we have a happy
answer.


>
> > > > +       }
> > > > +
> > > > +       if (status)
> > > > +               goto init_free_q;
> > > > +
> > > > +       if (is_rxq) {
> > > > +               iecm_ctlq_init_rxq_bufs(*cq_out);
> > > > +       } else {
> > > > +               /* Allocate the array of msg pointers for TX queues */
> > > > +               (*cq_out)->bi.tx_msg = kcalloc(qinfo->len,
> > > > +                                              sizeof(struct iecm_ctlq_msg *),
> > > > +                                              GFP_KERNEL);
> > > > +               if (!(*cq_out)->bi.tx_msg) {
> > > > +                       status = -ENOMEM;
> > > > +                       goto init_dealloc_q_mem;
> > > > +               }
> > > > +       }
> > > > +
> > > > +       iecm_ctlq_setup_regs(*cq_out, qinfo);
> > > > +
> > > > +       iecm_ctlq_init_regs(hw, *cq_out, is_rxq);
> > > > +
> > > > +       mutex_init(&(*cq_out)->cq_lock);
> > > > +
> > > > +       list_add(&(*cq_out)->cq_list, &hw->cq_list_head);
> > > > +

Here you can set *cq_out = local_ptr;

> > > > +       return status;
> > > > +
> > > > +init_dealloc_q_mem:
> > > > +       /* free ring buffers and the ring itself */
> > > > +       iecm_ctlq_dealloc_ring_res(hw, *cq_out);
> > > > +init_free_q:
> > > > +       kfree(*cq_out);

Here you would kfree() your local pointer

sln

> .
> > >
> >
> > Will fix.
> >
> > > > +
> > > > +       return status;
> > > > +}
> > > > +
>
> <snip/>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
