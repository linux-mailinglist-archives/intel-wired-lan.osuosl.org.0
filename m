Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC08E62466A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 16:58:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 447E460F46;
	Thu, 10 Nov 2022 15:58:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 447E460F46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668095893;
	bh=Os7MHWt813sVgKZJh25ZArGTxocTVp0AQQFnLnEw8q4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xHKHW9juaSDE/c1bm/6MjsAO4UHECe3Q07kqZl+7/H7DbbKq8ESpP+oV13Vk5PWTN
	 C7XUoTZ4cR8IJmoRFWyIOMQezGyGKBloOo2H1MH1sc3dt/4MJlmClkUzVW83xEOxIb
	 qJ3h+kJyDE9rU2VLNh6Cqo8Rki5eBL4HL0Y8YOC905hvLIGOrz26WFKBzpoCKdFk4S
	 fXKkvI92gpUlZwZki2XAjU6E3IXr/3C/AP90AuouSmp14f+HZk+s2dlVVFVcx4PKnm
	 jAatEUNCiVPywDZotEwoD5EJ2/VAg/AddiD3SYxQhUmMAN9NtABM8t2bValq0tRokp
	 u8/+aQ5Clr7gA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iiG7ZYxCcFEJ; Thu, 10 Nov 2022 15:58:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4523B60E8B;
	Thu, 10 Nov 2022 15:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4523B60E8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F35061BF335
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 15:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAFE5417BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 15:58:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAFE5417BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S4YZ9KJDTjqc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 15:58:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7250A417BC
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7250A417BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 15:58:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="312482088"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="312482088"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 07:58:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="779821982"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="779821982"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 10 Nov 2022 07:58:02 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2AAFw15T013024; Thu, 10 Nov 2022 15:58:02 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Thu, 10 Nov 2022 16:54:32 +0100
Message-Id: <20221110155432.3533118-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221109194759.509889-1-arkadiusz.kubalewski@intel.com>
References: <20221109194759.509889-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668095885; x=1699631885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YBQ/yTM6MsAwmJeQeu5z5WQTvcmGIYp9cnTQrdrqNRQ=;
 b=ImmK/0nb6KyFKesRnNt56scyT7ESQyuAT1nt8mnEu3pXTkdWgFNFo+/F
 ZrfgqeOBFMUNLAujFjmLC30sAxgwy5p9FNLzCed0gNB3v2meEXqfZvrm+
 hw8R8+V8We+URy0WEfY0A5wFiOud/NX9F80Nhi4QUziOca/fBsgOK5sEb
 oZNEn9I07qUeUtg3mZlceqe6ZkgCuBgcXA5Ot4lcnSMbHKEbIsAaqSCQv
 eRj7f4gRdGD65W6sHjvqlAg/yEbsqCiVZ8giE65c9SoCVYozSofXL3gJV
 znkDF7xuS1ysgGhDyTHz+iyddT3NDXdytY2PLGR2aJCSYmBKoQEs5mwDf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ImmK/0nb
Subject: Re: [Intel-wired-lan] [PATCH next v10] ice: use GNSS subsystem
 instead of TTY
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
Cc: intel-wired-lan@lists.osuosl.org,
 Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Wed,  9 Nov 2022 20:47:59 +0100

> Previously support for GNSS was implemented as a TTY driver, it allowed
> to access GNSS receiver on /dev/ttyGNSS_<bus><func>.
> 
> Use generic GNSS subsystem API instead of implementing own TTY driver.
> The receiver is accessible on /dev/gnss<id>. In case of multiple
> receivers in the OS, correct device can be found by enumerating either:
> - /sys/class/net/<eth port>/device/gnss/
> - /sys/class/gnss/gnss<id>/device/
> 
> User expecting onboard GNSS receiver support is required to enable
> CONFIG_GNSS=y/m in kernel config.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---

[...]

> @@ -50,16 +39,13 @@ struct gnss_write_buf {
>   */
>  struct gnss_serial {
>  	struct ice_pf *back;
> -	struct tty_struct *tty;
> -	int open_count;
> -	struct mutex gnss_mutex; /* protects GNSS serial structure */
>  	struct kthread_worker *kworker;
>  	struct kthread_delayed_work read_work;
>  	struct kthread_work write_work;
>  	struct list_head queue;
>  };
>  
> -#if IS_ENABLED(CONFIG_TTY)
> +#if IS_ENABLED(CONFIG_GNSS)

Ooof, sorry for missing that during the previous reviews. This also
needs to be IS_ENABLED(CONFIG_ICE_GNSS), otherwise it won't link
when ICE = y and GNSS = m.

>  void ice_gnss_init(struct ice_pf *pf);
>  void ice_gnss_exit(struct ice_pf *pf);
>  bool ice_gnss_is_gps_present(struct ice_hw *hw);
> @@ -70,5 +56,5 @@ static inline bool ice_gnss_is_gps_present(struct ice_hw *hw)
>  {
>  	return false;
>  }
> -#endif /* IS_ENABLED(CONFIG_TTY) */
> +#endif /* IS_ENABLED(CONFIG_GNSS) */

(here as well)

Other than that, feel free to add

Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

to the next version. I'm no way an GNSS expert, but the rest is
fine, good stuff, and diffstat looks very nice, too.

>  #endif /* _ICE_GNSS_H_ */
> -- 
> 2.34.3

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
