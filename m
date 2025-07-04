Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCD3AF8EAA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 11:32:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FEF360B71;
	Fri,  4 Jul 2025 09:32:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WvVVtuhTjz2d; Fri,  4 Jul 2025 09:32:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A80A60B74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751621527;
	bh=QZgpnBD4GxElwBB/VJGim3bFog8ZZPW72uSDh2Py1og=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QEtByDvkAFwvOOM4F4kW4LqPmc7mGxu+pFft4kRsA5jkDs4DpIfO3TWKFaLDVK8ka
	 7mtN3Yq6W3JsopKsTkG/C/MdjSpKvMelKS19MRilHIyv/BTFEtkac4w5wwo2sh5tGY
	 uj0gcVLwnn7Cad8XYgOLS/eqN3mjFINfFa7YFP5EPKlPnu53U/WSA6bCxJHUEVSZbn
	 KoD/fWEnlK/Oi9wG10A2fFjQHYBRUU3/MEcqOcW/ATW2fG3g3gY2duXG8kR5qtkHcr
	 DnSHDZ+qDdF0IUuSr26ev97Tbvy740tgv98Cp+7U2cddsf7kTHre0eu10LyJ/DTAsE
	 1o+nvWlfGST7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A80A60B74;
	Fri,  4 Jul 2025 09:32:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FB9A15F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 09:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51C8A80DD2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 09:32:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WKCFY060g1b7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 09:32:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42c; helo=mail-wr1-x42c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CBFA680BDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBFA680BDB
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CBFA680BDB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 09:32:03 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-3a4f379662cso612332f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Jul 2025 02:32:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751621521; x=1752226321;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QZgpnBD4GxElwBB/VJGim3bFog8ZZPW72uSDh2Py1og=;
 b=FJmmrKfxWRzw9SJfMLj1SZzCl6kwnd3uRvILi1dwtFANV0QkUfWetUerNgeSauADY4
 Qhd6LyY5n9SoYB1nKCfH7oQ/ObL5+XJ+qaWdKTcQAPwgVKpR0g+T5jFSOD7a9UzhUuJ2
 XqRYd1g0qzdH7fsCkGTFRmUSZY7To8/t5KfqJk+KyOqYJI/MIxhMq8qp6OE3q2Sn00uD
 132D4Ax8lYMZya7msVszocRXy2mb4CQ4jGxlrpMauDg8D69DSejaomJxFe27OQHzeFe5
 kQaL7JM4iy2Q6RWcipzxLNB1miuun19duyXbXAZEXf8cBIp28DYZvgsX90rom7CQh2ig
 J6UQ==
X-Gm-Message-State: AOJu0YyLHjj+AHwxApyleop7iHOKdARLA6LdAJAGL2nQEcsNQYZCM6QC
 Dazv+XOZMHGn73Dl6z6p7c+ATQn3sIzUKlf4HY0aEb6E9481V4D/h9q40Ybe1MdblcI=
X-Gm-Gg: ASbGnculi8bKmZq+LyP2XUDZpHoJoQvFrc2iTxtbokcU0+Kfo/XpjbwCFEIqE2ubpSm
 pRhgA4SwnAUKnHDotynLAczcdONScwRdiEwc1Zu3XceoWy+KZXjQkdyJAF5RSo0Tni1vm8qKHJv
 Cl5JlnoXnp5DfA8uSoMBWWDrxJEtwRIf4xqB9tVcM0AEQvvMDoOXunnF54GzFsApUeMNK6wU7in
 S4drv/8dJncfwNqlI+R01i/8rRf18x0/RifZW1aYxw0zlBCkxhog1pB3zrH8qFiUtGcDs8+48mZ
 cKxJys2VV4WoJ8M2t89XTarmDLkG0Jownf6twJsBVawRrrNXfsEt9liACaVFcJv53khC7Q==
X-Google-Smtp-Source: AGHT+IEiaAkmOMcypoOLO4L/oIZCDDIOQyvPnmi1WnhS1JFkAvP/4z5JKzSCPRS/P9b0UTv0mlkU5w==
X-Received: by 2002:a05:6000:3c7:b0:3a5:287b:da02 with SMTP id
 ffacd0b85a97d-3b49702e849mr985133f8f.40.1751621521039; 
 Fri, 04 Jul 2025 02:32:01 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b470d9e470sm1977988f8f.41.2025.07.04.02.31.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jul 2025 02:32:00 -0700 (PDT)
Date: Fri, 4 Jul 2025 11:31:54 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org, david.kaplan@amd.com, dhowells@redhat.com, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <nbwrfnjhvrcduqzjl4a2jafnvvud6qsbxlvxaxilnryglf4j7r@btuqrimnfuly>
References: <20250703113022.1451223-1-jedrzej.jagielski@intel.com>
 <my4wiyu5dqlalt45e5pz2dfhjm3ytbnshhhjqlcdetp357z7u6@zvnq7wfcunlv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <my4wiyu5dqlalt45e5pz2dfhjm3ytbnshhhjqlcdetp357z7u6@zvnq7wfcunlv>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1751621521; x=1752226321;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QZgpnBD4GxElwBB/VJGim3bFog8ZZPW72uSDh2Py1og=;
 b=fcM9rODHUq4CpYoNdW/wH7lirQAQTkHZdqrB96P6NzyR4PFC1ZCOW2jKTPDjclJoSz
 iWHu5IFyY5MQYZ8vDzoQp5HaJzU0cvL64DUcNBNZ8wG1OYhzRwI3t/krbssmVbKQHQSY
 VJg6VcwiW720vlMMvuiNiTyESd2cJ79RAvtXRjUtj3LKLglUahqrtBEMq461JQz5PViw
 e7f8x2L1BVpo6IRXyqokAFoTEIg31GoAcXaO9qWZ8k9eMSAO7Udm0SvzeScwmjqBYQ5T
 l1uyxfRYhem5sVBPV/+eR1gQZmMxTV6nuN812QCKuoNK9Hktc3bac5ndj+tVY8NBLW5M
 EG3g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=fcM9rODH
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/2] devlink: allow driver
 to freely name interfaces
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

Fri, Jul 04, 2025 at 11:17:23AM +0200, jiri@resnulli.us wrote:
>Thu, Jul 03, 2025 at 01:30:21PM +0200, jedrzej.jagielski@intel.com wrote:
>>Currently when adding devlink port it is prohibited to let
>>a driver name an interface on its own. In some scenarios
>>it would not be preferable to provide such limitation.
>>
>>Remove triggering the warning when ndo_get_phys_port_name() is
>>implemented for driver which interface is about to get a devlink
>>port on.
>
>What's the reason for this? If you are missing some formatting, you
>should add it to devlink.
>
>Please don't to this.

I read the thread with the reported regression. Instead of this, could
you please perhaps rather add a flag to attrs:

struct devlink_port_attrs {
	u8 split:1,
	   splittable:1,
	   skip_phys_port_name_get:1; /* This is for compatibility only,
				       * newly added driver/port
				       * instance should never
				       * set this. */
Or something like that and check-return0 in
__devlink_port_phys_port_name_get()
?


>
>>
>>Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>---
>> net/devlink/port.c | 17 -----------------
>> 1 file changed, 17 deletions(-)
>>
>>diff --git a/net/devlink/port.c b/net/devlink/port.c
>>index 939081a0e615..f885c8e73307 100644
>>--- a/net/devlink/port.c
>>+++ b/net/devlink/port.c
>>@@ -1161,23 +1161,6 @@ static void devlink_port_type_netdev_checks(struct devlink_port *devlink_port,
>> {
>> 	const struct net_device_ops *ops = netdev->netdev_ops;
>> 
>>-	/* If driver registers devlink port, it should set devlink port
>>-	 * attributes accordingly so the compat functions are called
>>-	 * and the original ops are not used.
>>-	 */
>>-	if (ops->ndo_get_phys_port_name) {
>>-		/* Some drivers use the same set of ndos for netdevs
>>-		 * that have devlink_port registered and also for
>>-		 * those who don't. Make sure that ndo_get_phys_port_name
>>-		 * returns -EOPNOTSUPP here in case it is defined.
>>-		 * Warn if not.
>>-		 */
>>-		char name[IFNAMSIZ];
>>-		int err;
>>-
>>-		err = ops->ndo_get_phys_port_name(netdev, name, sizeof(name));
>>-		WARN_ON(err != -EOPNOTSUPP);
>>-	}
>> 	if (ops->ndo_get_port_parent_id) {
>> 		/* Some drivers use the same set of ndos for netdevs
>> 		 * that have devlink_port registered and also for
>>-- 
>>2.31.1
>>
