Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BA7A10422
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 11:31:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65EDE608A0;
	Tue, 14 Jan 2025 10:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W2khbMsEM82d; Tue, 14 Jan 2025 10:31:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54C9B607A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736850660;
	bh=v/4EbrSOAJuIZk8J336Lg0KE8WAdSupSpKD+eDZUg64=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kXioXR9x1MPUKNpB1R2fbqqrRt75ryW3dErDd/oCKco3PrBV/ih2ftgjTmL1ey/30
	 5oTc2ATo0RxFklm3fcvWIjTanAE6ei+KI6rvi9NYXvgOa3m1dm3RvxNNLu6gJnW1aV
	 8vSwmAtkXHrn7BHYUSTa9+lUitYMJVzNNNVpzP4ObtX8cR9VErS/cxU8etKh3e5i4e
	 /tThMj+zzZYH9L2kacWFeUb9nqeIpEsMY5KQfPjBC3OlXqtTA4m09K4myqlEPJf1d1
	 VGqnJXklsNOJoXkYN+PnS4yKrECmk7mNZ/nlfUs1jhaua5TmUqB996jZB6Pxzv3TcX
	 TNXBuREF1AvzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54C9B607A1;
	Tue, 14 Jan 2025 10:31:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 82785B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 10:30:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62DB660715
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 10:30:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M6meZkx8kK56 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 10:30:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::833; helo=mail-qt1-x833.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 39E75607A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39E75607A1
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39E75607A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 10:30:57 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id
 d75a77b69052e-467b955e288so57679721cf.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 02:30:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736850656; x=1737455456;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=v/4EbrSOAJuIZk8J336Lg0KE8WAdSupSpKD+eDZUg64=;
 b=LW7ftN1ozDQ6IttNp+uO0BcR2teQ3pzJkbNwqxN1+R+cnppg5xo8KxuBR/cBVhYBXU
 fHwE/eSFACARg7winciBouF7O6NfRjs6tbMsC3HtrMC+CVWufEBYxHtZlQ00U3jiw2tD
 Ez8ueWh/pg13K3/0Fko0RVZF2dXzXfNSpzHjcLKrsYW5Pn4WnfBjdLQWh9IrgApios0p
 ESF3EiO2kyZYpNUWstw9+Z5j9IsxjuznNwMe0U34TS4MqrMaH4FvV/txThsb1NCDcE95
 XZYWcZnxgHtyvfwe8AJEXZsyZjw/h1nyCE9aRujGSMSrRJ4ACSW8M1Th/ararmAsBwAM
 PMAA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8x8R7bvRkumvoSuzyHrXGpHojw3D+lSmzInaE5jpOH9vFVBbw9jP9CcPtFxhO5aNkK5ZR0x8autFZHB8GyxQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyPv6j2trI2Do3q92EFo+VvaDZ/fzIcl3v7PIw3ZY2YvSi24cSG
 X7yoDStgZ3YIbKJjFdDkC4bij1sDvA76eLZOUO2IK+GX1wB1CsNt
X-Gm-Gg: ASbGncvFjUUaMbKnc2DcIgYPpbZWAHkbag6mbWmtRA1OXRQadvCYdPQwdt22B/zUftX
 jROtLf+psCYWgcIXceOEk92PwKO2QjQiQRnjU8uS+bNTXERpydLXI6bhtP4ogKWL1geNl4Yj3s9
 0lThxDCXfg9cxDMN643zQ+ZrVRHA4xZdf4wPWvbzlki9tCEowUN1zQFHP/gWuWFvt+8rD2Li+Sk
 kv9MlLjdjaMDVS7VUxrvRaNqcV4A8YK36HVQiFLfPt+g/tUSdPSiyfM2KB841CoxPmaBOn5MhIE
 dczS2oFakouycAXlGsZPS/H/2+Md
X-Google-Smtp-Source: AGHT+IGKcw3Ff7Jh3eUNUtLu+QxKCy5Q809X88yQe8ynUKKWz6XASkFOWN6HpUOp3ZMx+3z2EPZy4w==
X-Received: by 2002:a05:622a:1a06:b0:466:9824:16ef with SMTP id
 d75a77b69052e-46c70fd2960mr401622621cf.3.1736850655833; 
 Tue, 14 Jan 2025 02:30:55 -0800 (PST)
Received: from localhost (15.60.86.34.bc.googleusercontent.com. [34.86.60.15])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6dfad88142asm51579396d6.27.2025.01.14.02.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2025 02:30:54 -0800 (PST)
Date: Tue, 14 Jan 2025 05:30:54 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: "Olech, Milena" <milena.olech@intel.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "Hay, Joshua A" <joshua.a.hay@intel.com>
Message-ID: <67863cde6f20b_231a7929448@willemb.c.googlers.com.notmuch>
In-Reply-To: <MW4PR11MB5889B67F0F83D75AC91DE9B78E1F2@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20241219094411.110082-1-milena.olech@intel.com>
 <20241219094411.110082-9-milena.olech@intel.com>
 <677d4042a293e_25382b2948@willemb.c.googlers.com.notmuch>
 <MW4PR11MB58891AC5F86EFECEA76B58D38E1C2@MW4PR11MB5889.namprd11.prod.outlook.com>
 <67819233d3382_34732294ca@willemb.c.googlers.com.notmuch>
 <MW4PR11MB5889B67F0F83D75AC91DE9B78E1F2@MW4PR11MB5889.namprd11.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736850656; x=1737455456; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v/4EbrSOAJuIZk8J336Lg0KE8WAdSupSpKD+eDZUg64=;
 b=ey/VCzpubUXTkHNT3bkdgSIijyPvVggWWbH0N/OpfUxDTquIV6NxJgpPNUF3NBotDR
 fhn7yZ9pp5BDXlQJFmPtCguG9Nwpy0haIpmCiqLK2ETRp85yXSCoPNmRz5aNOocqdtDe
 //RHz04l15d7arhBtEYIz5G/952OXu/4QI+Mmv5x7XWHLRMqt5s7g1C+mt02CHOmFOMs
 Ao1/TTQTyKnhcTNY0D32FFH0CwU/NWDk2iEA3CDuXsqyFBWlEx99TXOOW3dAaRKm9yQG
 UvaHHqspjmCBa8hKX3/d1d+W/pgv23gzXJ9NPwnfYgan6TiZ//s020r9Yjm0gNDUrQLN
 guPA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ey/VCzpu
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 08/10] idpf: add Tx
 timestamp flows
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Olech, Milena wrote:
> On 01/10/2025 10:34PM Willem de Bruijn wrote:
> 
> > > > > Add functions to request Tx timestamp for the PTP packets, read the Tx
> > > > > timestamp when the completion tag for that packet is being received,
> > > > > extend the Tx timestamp value and set the supported timestamping modes.
> > > > > 
> > > > > Tx timestamp is requested for the PTP packets by setting a TSYN bit and
> > > > > index value in the Tx context descriptor. The driver assumption is that
> > > > > the Tx timestamp value is ready to be read when the completion tag is
> > > > > received. Then the driver schedules delayed work and the Tx timestamp
> > > > > value read is requested through virtchnl message. At the end, the Tx
> > > > > timestamp value is extended to 64-bit and provided back to the skb.
> > > > > 
> > > > > Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
> > > > > Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> > > > > Signed-off-by: Milena Olech <milena.olech@intel.com>
> > > > > ---
> > > > > v2 -> v3: change get_timestamp_filter function name, split stats
> > > > > into vport-based and tx queue-based
> > > > > v1 -> v2: add timestamping stats, use ndo_hwtamp_get/ndo_hwstamp_set
> > > > > 
> > > > >  drivers/net/ethernet/intel/idpf/idpf.h        |  20 ++
> > > > >  .../net/ethernet/intel/idpf/idpf_ethtool.c    |  69 ++++-
> > > > >  .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
> > > > >  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  47 ++++
> > > > >  drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 236 +++++++++++++++++-
> > > > >  drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  52 ++++
> > > > >  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 139 ++++++++++-
> > > > >  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  11 +-
> > > > >  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   6 +-
> > > > >  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 235 +++++++++++++++++
> > > > >  10 files changed, 814 insertions(+), 14 deletions(-)
> > > > > 
> > > > 
> > > > > +/**
> > > > > + * idpf_get_timestamp_filters - Get the supported timestamping mode
> > > > > + * @vport: Virtual port structure
> > > > > + * @info: ethtool timestamping info structure
> > > > > + *
> > > > > + * Get the Tx/Rx timestamp filters.
> > > > > + */
> > > > > +static void idpf_get_timestamp_filters(const struct idpf_vport *vport,
> > > > > +				       struct kernel_ethtool_ts_info *info)
> > > > > +{
> > > > > +	if (!vport->tx_tstamp_caps ||
> > > > > +	    vport->adapter->ptp->tx_tstamp_access == IDPF_PTP_NONE)
> > > > > +		return;
> > > > 
> > > > Is making SOF_TIMESTAMPING_RX_HARDWARE and SOF_TIMESTAMPING_RAW_HARDWARE
> > > > conditional on tx_tstamp_access intentional?
> > > 
> > > Hmmm, good catch.
> > > I guess I will change the SOF_TIMESTAMPING_RX_HARDWARE to be not
> > > conditional.
> > > 
> > > About the SOF_TIMESTAMPING_RAW_HARDWARE - it should rely on the
> > > tx_statmp_access.
> >
> > For Tx, but it also applies to Rx.
> 
> Right, there was a misunderstanding because the documentation says:
> "Report hardware timestamps as generated by
>  SOF_TIMESTAMPING_TX_HARDWARE when available."
> 
> So I assumed that it's Tx only.

Indeed. This was fixed fairly recently in commit e503f82e304b. It now
reads

"
SOF_TIMESTAMPING_RAW_HARDWARE:
  Report hardware timestamps as generated by
  SOF_TIMESTAMPING_TX_HARDWARE or SOF_TIMESTAMPING_RX_HARDWARE
  when available.
"

 
> > > > > +
> > > > > +	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
> > > > > +				SOF_TIMESTAMPING_TX_HARDWARE |
> > > > > +				SOF_TIMESTAMPING_RX_HARDWARE |
> > > > > +				SOF_TIMESTAMPING_RAW_HARDWARE;
> > > > > +
> > > > > +	info->tx_types = BIT(HWTSTAMP_TX_OFF) | BIT(HWTSTAMP_TX_ON);
> > > > > +}
> > > > > +
> > > > > +
> > > > > +static int idpf_hwtstamp_get(struct net_device *netdev,
> > > > > +			     struct kernel_hwtstamp_config *config)
> > > > > +{
> > > > > +	struct idpf_adapter *adapter = idpf_netdev_to_adapter(netdev);
> > > > > +	struct idpf_vport *vport;
> > > > > +
> > > > > +	idpf_vport_cfg_lock(adapter);
> > > > > +	vport = idpf_netdev_to_vport(netdev);
> > > > > +
> > > > > +	if (!idpf_ptp_get_vport_tstamp_capability(vport)) {
> > > > > +		idpf_vport_cfg_unlock(adapter);
> > > > > +		return -EOPNOTSUPP;
> > > > 
> > > > Should this return an empty config and return 0, rather than return
> > > > error?
> > > > 
> > > 
> > > I'd prefer to return NOTSUPP, as the feature itself relies on the CP
> > > policy.
> > 
> > Does that make ethtool -T $DEV fail? It should ideally succeed while
> > only advertising software receive timestamping (which is implemented
> > device independent).
> 
> Ok, I'll change then.

I did not actually check whether it would return in failure at the
application layer, to be clear. Just saying that if that would be the
consequence, then that would not be good.

> > > > > +/**
> > > > > + * idpf_ptp_tstamp_extend_32b_to_64b - Convert a 32b nanoseconds Tx timestamp
> > > > > + *				       to 64b.
> > > > > + * @cached_phc_time: recently cached copy of PHC time
> > > > > + * @in_timestamp: Ingress/egress 32b nanoseconds timestamp value
> > > > > + *
> > > > > + * Hardware captures timestamps which contain only 32 bits of nominal
> > > > > + * nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> > > > > + *
> > > > > + * Return: Tx timestamp value extended to 64 bits based on cached PHC time.
> > > > > + */
> > > > > +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_timestamp)
> > > > > +{
> > > > > +	u32 delta, phc_lo;
> > > > > +	u64 ns;
> > > > > +
> > > > > +	phc_lo = lower_32_bits(cached_phc_time);
> > > > > +	delta = in_timestamp - phc_lo;
> > > > > +
> > > > > +	if (delta > S32_MAX) {
> > > > > +		delta = phc_lo - in_timestamp;
> > > > > +		ns = cached_phc_time - delta;
> > > > > +	} else {
> > > > > +		ns = cached_phc_time + delta;
> > > > > +	}
> > > > 
> > > > If using s64 delta and ns, no need for branch?
> > > 
> > > To make it more readable, I'll change the condition in v4.
> > > I'll check if the phc_lo is greater than in_stamp.
> > > 
> > > If phc_lo is bigger, then tx tstamp value was captured before
> > > caching PHC time and case 1 will be applicable.
> > 
> > My point is that with signed arithmetic there is no need to
> > invert delta and switch from addition to deletion.
> 
> This ns value is used - at the end of the day - in ns_to_ktime function,
> which requires u64, so IMO it is easier to differentiate at this point,
> rather than introducing new logic in f.e. idpf_ptp_extend_ts.
> 
> But to remove this condition signed delta is enough, and it may work.

Just a suggestion. Feel free to leave as is if you prefer.
