Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFC04E4588
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Mar 2022 18:52:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67D118477F;
	Tue, 22 Mar 2022 17:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i4dE8-CQnkdH; Tue, 22 Mar 2022 17:52:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67B4584771;
	Tue, 22 Mar 2022 17:52:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 673C21BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 17:52:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5401C6127C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 17:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qw72jVz7JWaS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Mar 2022 17:52:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8EF26605A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Mar 2022 17:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647971524; x=1679507524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GOSyCMT3Bo8pMPfvKQ6OUb28JkU8aRwvgc6c1E/p/HM=;
 b=ZiYbB/PrZ2l9NEnIFPUCsMsbUvhiy9PdcsOjgSi5HO+TmbqUEnEu8wyu
 q9+x1QHAgIOWot+BXhl7Nwnb4pQoDsMOrV6Of7iyDBTs9ejMAkv5I5Zlz
 ic6/rJ/R/DjH2TWKPz9Onumrkjq6kYgtABTdyeY/HJKwvaoJbSMhZ4hOC
 MZQ+IMiZ8OGICProMLnVGibpzUzeouXGU/t3BwvQThFhtPyhfp3pKaWJw
 nShKhvPGSc7Zx1Nvh9j9FkIQQ45HTiJeflB/oIrzB19js0TKCZ6YDyzRB
 kif7sdm2wVKd8rAfztqX+A3xdt/aopvh8mz0ctgcBRNTigkc7ngbvAfgX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="257851085"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="257851085"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 10:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="692645180"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2022 10:51:58 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22MHpvJb002184; Tue, 22 Mar 2022 17:51:57 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: David Laight <David.Laight@ACULAB.COM>
Date: Tue, 22 Mar 2022 18:50:38 +0100
Message-Id: <20220322175038.2691665-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <f888e3cf09944f9aa63532c9f59e69fb@AcuMS.aculab.com>
References: <20220321135947.378250-1-wanjiabing@vivo.com>
 <f888e3cf09944f9aa63532c9f59e69fb@AcuMS.aculab.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: use min_t() to make code
 cleaner in ice_gnss
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
Cc: 'Wan Jiabing' <wanjiabing@vivo.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: David Laight <David.Laight@ACULAB.COM>
Date: Mon, 21 Mar 2022 16:02:20 +0000

> From: Wan Jiabing
> > Sent: 21 March 2022 14:00
> >
> > Fix the following coccicheck warning:
> > ./drivers/net/ethernet/intel/ice/ice_gnss.c:79:26-27: WARNING opportunity for min()
> >
> > Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
> > ---
> > Changelog:
> > v2:
> > - Use typeof(bytes_left) instead of u8.
> > ---
> >  drivers/net/ethernet/intel/ice/ice_gnss.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
> > index 35579cf4283f..57586a2e6dec 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> > @@ -76,8 +76,7 @@ static void ice_gnss_read(struct kthread_work *work)
> >  	for (i = 0; i < data_len; i += bytes_read) {
> >  		u16 bytes_left = data_len - i;
> 
> Oh FFS why is that u16?
> Don't do arithmetic on anything smaller than 'int'

Any reasoning? I don't say it's good or bad, just want to hear your
arguments (disasms, perf and object code measurements) etc.

> 
> 	David
> 
> >
> > -		bytes_read = bytes_left < ICE_MAX_I2C_DATA_SIZE ? bytes_left :
> > -					  ICE_MAX_I2C_DATA_SIZE;
> > +		bytes_read = min_t(typeof(bytes_left), bytes_left, ICE_MAX_I2C_DATA_SIZE);
> >
> >  		err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
> >  				      cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
> > --
> > 2.35.1
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
