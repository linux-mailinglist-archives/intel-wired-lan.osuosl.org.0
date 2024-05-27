Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A72078D049B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 16:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DA0F60758;
	Mon, 27 May 2024 14:50:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GrpnSPb7gN55; Mon, 27 May 2024 14:50:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2487C608C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716821433;
	bh=o9llCE6bf/u5u06Di98FE4WzENMsez3qov17GhDcfaI=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Or6kFP1dXsue/JfQ8xk6/L7lR2Y+zOHE3n8sHROV76su/OLZreZcUO47/zGiImBPP
	 rh85Ny2IqKjVmJM70ApFrYXussn3M8FSUhnj1JfA0IqONpQp5+TQnmN153pE4fIDD6
	 C5TNjhguAB4OdV9FsM6WhMJla+9dZRrmgRnegNmy8EOj21NSd/xMTztL69fjsrfZRK
	 GbRvC7P+qKRLZNC1xC8PTclipPk9lC9pEG+UXPJCOXM5pE2wMu00bwO4ecNFzwjRiH
	 s8j/0zOD59qpjFcuj6CoAmwsI+mDLNXVcROmF0INzHp6i/rIYDEI+hvlv29F1/G8bW
	 Yz8XEs1KzYwlw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2487C608C8;
	Mon, 27 May 2024 14:50:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34DCA1D1DE8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2035760890
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v58X2HuUXRgU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 14:50:30 +0000 (UTC)
X-Greylist: delayed 965 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 27 May 2024 14:50:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4B6F260726
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B6F260726
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.142.5.81;
 helo=fgw20-7.mail.saunalahti.fi; envelope-from=andy.shevchenko@gmail.com;
 receiver=<UNKNOWN> 
Received: from fgw20-7.mail.saunalahti.fi (fgw20-7.mail.saunalahti.fi
 [62.142.5.81])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B6F260726
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:50:30 +0000 (UTC)
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
 by fgw23.mail.saunalahti.fi (Halon) with ESMTP
 id 33d59d03-1c36-11ef-80bb-005056bdfda7;
 Mon, 27 May 2024 17:34:20 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 27 May 2024 17:34:19 +0300
To: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
Message-ID: <ZlSZ63ST-Pj9CwCh@surfacebook.localdomain>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
 <20240513103813.5666-11-lakshmi.sowjanya.d@intel.com>
 <ZkH3GP2b9WTz9W3W@smile.fi.intel.com>
 <CY8PR11MB7364D1C85099E4337408EBAFC4F02@CY8PR11MB7364.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CY8PR11MB7364D1C85099E4337408EBAFC4F02@CY8PR11MB7364.namprd11.prod.outlook.com>
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=gmail.com
Subject: Re: [Intel-wired-lan] [PATCH v8 10/12] pps: generators: Add PPS
 Generator TIO Driver
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "x86@kernel.org" <x86@kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "giometti@enneenne.com" <giometti@enneenne.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "Dong, Eddie" <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, May 27, 2024 at 11:48:54AM +0000, D, Lakshmi Sowjanya kirjoitti:
> > -----Original Message-----
> > From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Sent: Monday, May 13, 2024 4:49 PM
> > On Mon, May 13, 2024 at 04:08:11PM +0530, lakshmi.sowjanya.d@intel.com
> > wrote:

...

> > > +static ssize_t enable_store(struct device *dev, struct device_attribute
> > *attr, const char *buf,
> > > +			    size_t count)
> > > +{
> > > +	struct pps_tio *tio = dev_get_drvdata(dev);
> > > +	bool enable;
> > > +	int err;
> > 
> > (1)
> > 
> > > +	err = kstrtobool(buf, &enable);
> > > +	if (err)
> > > +		return err;
> > > +
> > > +	guard(spinlock_irqsave)(&tio->lock);
> > > +	if (enable && !tio->enabled) {
> > 
> > > +		if (!timekeeping_clocksource_has_base(CSID_X86_ART)) {
> > > +			dev_err(tio->dev, "PPS cannot be started as clock is
> > not related
> > > +to ART");
> > 
> > Why not simply dev_err(dev, ...)?
> > 
> > > +			return -EPERM;
> > > +		}
> > 
> > I'm wondering if we can move this check to (1) above.
> > Because currently it's a good question if we are able to stop PPS which was
> > run by somebody else without this check done.
> 
> Do you mean can someone stop the signal without this check? 
> Yes, this check is not required to stop.  So, I feel it need not be moved to (1).
> 
> Please, correct me if my understanding is wrong.

So, there is a possibility to have a PPS being run (by somebody else) even if
there is no ART provided?

If "yes", your check is wrong to begin with. If "no", my suggestion is correct,
i.e. there is no need to stop something that can't be started at all.

> > I.o.w. this sounds too weird to me and reading the code doesn't give any hint
> > if it's even possible. And if it is, are we supposed to touch that since it was
> > definitely *not* us who ran it.
> 
> Yes, we are not restricting on who can stop/start the signal. 

See above. It's not about this kind of restriction.

> > > +		pps_tio_direction_output(tio);
> > > +		hrtimer_start(&tio->timer, first_event(tio),
> > HRTIMER_MODE_ABS);
> > > +		tio->enabled = true;
> > > +	} else if (!enable && tio->enabled) {
> > > +		hrtimer_cancel(&tio->timer);
> > > +		pps_tio_disable(tio);
> > > +		tio->enabled = false;
> > > +	}
> > > +	return count;
> > > +}

-- 
With Best Regards,
Andy Shevchenko


