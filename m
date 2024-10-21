Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2CB9A6DFB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 17:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D04036078A;
	Mon, 21 Oct 2024 15:21:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6b_7lBtxSDct; Mon, 21 Oct 2024 15:21:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E80060780
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729524098;
	bh=Qd45AcB5BFH1QOvWwMd+udqHs2FTVoAPB22cnRbepP0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gpzuQfLWJqsFsVKJr/aB7sriUr2BtK4g98f2rbXINQgkOd2RfPlaQ+FsUDcIDoMkQ
	 mJQfAfQ+XdLU+axAli4dZ7iZNLFehyAUhk7clL1A7OZ1oM2A4BnWCMT7FyafKcFCIW
	 6IQQvKgbj5jvLgpGedtY9BrDfBc9pWjx65gwoX6Tma+MqLtey182f7sBNfLcEvw3IT
	 SPNUsnx6NMlpJQULO2o0oaFjZeWr1bClcZvOsXEoPd+BP6Ds65KbcZ6Ft2DETukv3B
	 sU33AATUk0e3yYpHIqCYL3LbwJUStoSeH4tPxEEr9qZ6V9viTC6X1Zw++J9qF+ITlU
	 KEbdl5VLZcZfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E80060780;
	Mon, 21 Oct 2024 15:21:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E5C0D27D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 15:21:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D477B6076D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 15:21:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HhQaQppGeC-m for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 15:21:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2CDAF60765
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CDAF60765
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CDAF60765
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 15:21:33 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 75FC461E5FE05;
 Mon, 21 Oct 2024 17:20:59 +0200 (CEST)
Message-ID: <15688d2d-b3a0-4730-9cee-15bb6c7f78fb@molgen.mpg.de>
Date: Mon, 21 Oct 2024 17:20:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241021141955.1466979-2-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ptp: add control over HW
 timestamp latch point
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

Dear Arkadiusz,


Thank you for your patch.

Am 21.10.24 um 16:19 schrieb Arkadiusz Kubalewski:
> Currently HW support of PTP/timesync solutions in network PHY chips can be
> implemented with two different approaches, the timestamp maybe latched
> either at the beginning or after the Start of Frame Delimiter (SFD) [1].
> 
> Allow ptp device drivers to provide user with control over the HW
> timestamp latch point with ptp sysfs ABI.

Please describe, that it’s done using `/sys` filesystem.

How can this be tested?

> [1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   Documentation/ABI/testing/sysfs-ptp | 12 ++++++++
>   drivers/ptp/ptp_sysfs.c             | 44 +++++++++++++++++++++++++++++
>   include/linux/ptp_clock_kernel.h    | 29 +++++++++++++++++++
>   3 files changed, 85 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-ptp b/Documentation/ABI/testing/sysfs-ptp
> index 9c317ac7c47a..a0d89e0fd72e 100644
> --- a/Documentation/ABI/testing/sysfs-ptp
> +++ b/Documentation/ABI/testing/sysfs-ptp
> @@ -140,3 +140,15 @@ Description:
>   		PPS events to the Linux PPS subsystem. To enable PPS
>   		events, write a "1" into the file. To disable events,
>   		write a "0" into the file.
> +
> +What:		/sys/class/ptp/ptp<N>/ts_point
> +Date:		October 2024
> +Contact:	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> +Description:
> +		This file provides control over the point in time in
> +		which the HW timestamp is latched. As specified in IEEE
> +		802.3cx, the latch point can be either at the beginning
> +		or after the end of Start of Frame Delimiter (SFD).
> +		Value "0" means the timestamp is latched at the
> +		beginning of the SFD. Value "1" means that timestamp is
> +		latched after the end of SFD.

Would it make sense to let it be configured by strings, so it’s clear, 
what the values mean?

1.  beginning_of_sfd
2.  end_of_sfd

> diff --git a/drivers/ptp/ptp_sysfs.c b/drivers/ptp/ptp_sysfs.c
> index 6b1b8f57cd95..7e9f6ef368b6 100644
> --- a/drivers/ptp/ptp_sysfs.c
> +++ b/drivers/ptp/ptp_sysfs.c
> @@ -28,6 +28,46 @@ static ssize_t max_phase_adjustment_show(struct device *dev,
>   }
>   static DEVICE_ATTR_RO(max_phase_adjustment);
>   
> +static ssize_t ts_point_show(struct device *dev, struct device_attribute *attr,
> +			     char *page)
> +{
> +	struct ptp_clock *ptp = dev_get_drvdata(dev);
> +	enum ptp_ts_point point;
> +	int err;
> +
> +	if (!ptp->info->get_ts_point)
> +		return -EOPNOTSUPP;
> +	err = ptp->info->get_ts_point(ptp->info, &point);
> +	if (err)
> +		return err;
> +
> +	return sysfs_emit(page, "%d\n", point);
> +}
> +
> +static ssize_t ts_point_store(struct device *dev, struct device_attribute *attr,
> +			      const char *buf, size_t count)
> +{
> +	struct ptp_clock *ptp = dev_get_drvdata(dev);
> +	enum ptp_ts_point point;
> +	int err;
> +	u8 val;
> +
> +	if (!ptp->info->set_ts_point)
> +		return -EOPNOTSUPP;
> +	if (kstrtou8(buf, 0, &val))
> +		return -EINVAL;
> +	if (val > PTP_TS_POINT_MAX)
> +		return -EINVAL;
> +	point = val;
> +
> +	err = ptp->info->set_ts_point(ptp->info, point);
> +	if (err)
> +		return err;
> +
> +	return count;
> +}
> +static DEVICE_ATTR_RW(ts_point);
> +
>   #define PTP_SHOW_INT(name, var)						\
>   static ssize_t var##_show(struct device *dev,				\
>   			   struct device_attribute *attr, char *page)	\
> @@ -335,6 +375,7 @@ static struct attribute *ptp_attrs[] = {
>   	&dev_attr_pps_enable.attr,
>   	&dev_attr_n_vclocks.attr,
>   	&dev_attr_max_vclocks.attr,
> +	&dev_attr_ts_point.attr,
>   	NULL
>   };
>   
> @@ -363,6 +404,9 @@ static umode_t ptp_is_attribute_visible(struct kobject *kobj,
>   	} else if (attr == &dev_attr_max_phase_adjustment.attr) {
>   		if (!info->adjphase || !info->getmaxphase)
>   			mode = 0;
> +	} else if (attr == &dev_attr_ts_point.attr) {
> +		if (!info->get_ts_point && !info->set_ts_point)
> +			mode = 0;
>   	}
>   
>   	return mode;
> diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
> index c892d22ce0a7..921d6615bd39 100644
> --- a/include/linux/ptp_clock_kernel.h
> +++ b/include/linux/ptp_clock_kernel.h
> @@ -55,6 +55,23 @@ struct ptp_system_timestamp {
>   	clockid_t clockid;
>   };
>   
> +/**
> + * enum ptp_ts_point - possible timestamp latch points (IEEE 802.3cx)
> + * @PTP_TS_POINT_SFD:      timestamp latched at the beginning of sending Start

The alignment of the start of the description looks strange with the 
second line being further right.

> + *			   of Frame Delimiter (SFD)
> + * @PTP_TS_POINT_POST_SFD: timestamp latched after the end of sending Start
> + *			   of Frame Delimiter (SFD)
> + */
> +enum ptp_ts_point {
> +	PTP_TS_POINT_SFD,
> +	PTP_TS_POINT_POST_SFD,
> +
> +	/* private: */
> +	__PTP_TS_POINT_MAX
> +};
> +
> +#define PTP_TS_POINT_MAX (__PTP_TS_POINT_MAX - 1)
> +
>   /**
>    * struct ptp_clock_info - describes a PTP hardware clock
>    *
> @@ -159,6 +176,14 @@ struct ptp_system_timestamp {
>    *                scheduling time (>=0) or negative value in case further
>    *                scheduling is not required.
>    *
> + * @set_ts_point: Request change of timestamp latch point, as the timestamp
> + *                could be latched at the beginning or after the end of start
> + *                frame delimiter (SFD), as described in IEEE 802.3cx
> + *                specification.
> + *
> + * @get_ts_point: Obtain the timestamp measurement latch point, counterpart of
> + *                .set_ts_point() for getting currently configured value.
> + *
>    * Drivers should embed their ptp_clock_info within a private
>    * structure, obtaining a reference to it using container_of().
>    *
> @@ -195,6 +220,10 @@ struct ptp_clock_info {
>   	int (*verify)(struct ptp_clock_info *ptp, unsigned int pin,
>   		      enum ptp_pin_function func, unsigned int chan);
>   	long (*do_aux_work)(struct ptp_clock_info *ptp);
> +	int (*set_ts_point)(struct ptp_clock_info *ptp,
> +			    enum ptp_ts_point point);
> +	int (*get_ts_point)(struct ptp_clock_info *ptp,
> +			    enum ptp_ts_point *point);
>   };
>   
>   struct ptp_clock;


Kind regards,

Paul
