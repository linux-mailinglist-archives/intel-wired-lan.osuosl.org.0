Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCDD852F4C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 12:29:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 617CA41030;
	Tue, 13 Feb 2024 11:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id crQ8CMTB_iil; Tue, 13 Feb 2024 11:29:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66C5C40C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707823790;
	bh=aOLKpGa2tRS0E6nd85j3XSyiNZMP4W3BXrx8+I184rE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Mm6xGTtB8dQyy/SAq51TEfXX+SzdV/3vlXE4pNyUBIpn9IrJHiio5kpib7lI6TQJ9
	 1tTDODfnXSzU89kZxnFV+id9JwPTDNgftp27pH68sYNkd+HjX0xMWh/mwUaZvTba7u
	 prbf5AbKjvLH1znY01Zramm2LNdWae/jgqNH65RHjOlUQcozSBXliHveFrF5YR6Hf4
	 4l4YkXd9xWdRd6OnUhIyKTF51svg+iouNplrfy25EZAMvH8+kQSkkiNcsGRdx+LwWH
	 Ld3LFypwnu/7dQp0jsSRSg7HgSJEBdS26T6ewfc/GvgL4XNSy7u8ljeJIEH00DoIVo
	 0taL/pZ3uaU1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66C5C40C20;
	Tue, 13 Feb 2024 11:29:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C29941BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF0614056B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tqHEDQqTKRPl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 11:29:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::236; helo=mail-lj1-x236.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A5CB04056A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5CB04056A
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5CB04056A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:29:46 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id
 38308e7fff4ca-2d1025717c7so14163811fa.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 03:29:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707823784; x=1708428584;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aOLKpGa2tRS0E6nd85j3XSyiNZMP4W3BXrx8+I184rE=;
 b=mGOLnmDcJNdKVgM3f20Y4NX6TLDyJf00ftCQmjYAwdlFpV7pkAFyHuZSJ777N0hOQn
 gLy5nQu2+BdsGy2+ihR7GIAnyaxGr1XVhGItYFBO9Y2jal4PmLTvJ77leiEajg6zXBOI
 2bav3DiK25M2uuBQEmSP+/1+bJcsGMwK4nkhQ2tIF0E5jgG2zzHDE2jfidtU4eXT+ve1
 JwTAtCunyyJb6dppYL1lO8kBnc9WXtLCXH3vi/PXY4CXMfLyzr+IUOCdMHGwPxSNKGyH
 4wlioNYbuhw+a4y5+E7WhMK6irVV6lRvYcIjUTfS2E4yVXqDkVISxC0guOiMfWiLDPiP
 H05w==
X-Gm-Message-State: AOJu0YyfCXQH3eKpdbD9z8mdAMHTqa7LsabENIzfLenrwydxYf6mhLsc
 acPQRhD/jXHbiiKxp+SexwWSVdVxCCoiHr/7xZyhpoLQXV7EFtd1IUEg32SJqF4=
X-Google-Smtp-Source: AGHT+IHaykZ6piYnH9ORlAdb7q49pdyzDZJicVeq/kX5x59ewYxcvJElUrBPPt8xCWVX09s5lVrUGw==
X-Received: by 2002:a2e:b0d7:0:b0:2d0:cc80:dc94 with SMTP id
 g23-20020a2eb0d7000000b002d0cc80dc94mr5820546ljl.19.1707823784260; 
 Tue, 13 Feb 2024 03:29:44 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWEwI42cyBgO9bl04zzXCtXzhH8Fg8mVv62uPoeIy4mUvSUcvqerKLrNL9gwFjb+qVqj5jj4lvZY+ArEU9XK4FTu8vJ/ha+TLX0EZtpxOrnuJThl9CgGwXfVNu/K7zI2RXSNsRQB6tZYIXmSIviIZVFsAnSRNfw0yTSxlmIyD6OKy2GqFVuFl29I1SUk/Rf0xOoPcHHreAx7O7LmeLGLn+/Q7ApYzSYqY6dbMTQdEVCgkTDVCRwaPSr4/bHyL3lshYLk2AP4+E9Q19q9DgLLQS92SeX3hFYDlFOB8TCtl9Z8regl5s8DSm0eaIgvDDhWubU52CRAZo0w5sIbyuh9jcPI/SEYGD38QAH+uAyUOEYt/TmYr3CzmQmGJDQk/KD00JeMisYG2FoeYrlxrLU3M+vHz7T
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 p16-20020adfcc90000000b0033b2497fdaesm9258714wrj.95.2024.02.13.03.29.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 03:29:43 -0800 (PST)
Date: Tue, 13 Feb 2024 12:29:40 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZctSpPamhrlF4ILg@nanopsycho>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-8-michal.swiatkowski@linux.intel.com>
 <ZcsvYt4-f_MHT3QC@nanopsycho> <Zcs8LsRrbOfUdIL7@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zcs8LsRrbOfUdIL7@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707823784; x=1708428584;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=aOLKpGa2tRS0E6nd85j3XSyiNZMP4W3BXrx8+I184rE=;
 b=KdNDqgF5Y/e+vZYwGoSctp5Z8Jzp9aqTM4UHQYLddRnyBMuj01gNxZnH8/Jf00VXBC
 Xa3I7VMCfPQiw3mjvm1C4ZGWOLFvHrxGAvl/QBlMaGPoOOt+esnSCH3xLRspVxnhcxZ9
 5fjNicDG5vrEgOL1ZMY80Fwxie3aYHpq/ckFfjU4Jn1PdSl5+DVIbiD3ZrRoDR8Pi2dF
 Nfa909Ta4652ekpokGoWI+x397PZLKJeqp26MRAbLNRNNh/U4pFjFnEA6MbeKOobsZs1
 2LYmlWWQ1oldyeO/3H6YWccckU+vKwUHOJCHWvIWuzfDrPC1g4JWB1RsCj5A4017p5g4
 XXMg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=KdNDqgF5
Subject: Re: [Intel-wired-lan] [iwl-next v1 07/15] ice: add auxiliary device
 sfnum attribute
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 10:53:50AM CET, michal.swiatkowski@linux.intel.com wrote:
>On Tue, Feb 13, 2024 at 09:59:14AM +0100, Jiri Pirko wrote:
>> Tue, Feb 13, 2024 at 08:27:16AM CET, michal.swiatkowski@linux.intel.com wrote:
>> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> >
>> >Add read only sysfs attribute for each auxiliary subfunction
>> >device. This attribute is needed for orchestration layer
>> >to distinguish SF devices from each other since there is no
>> >native devlink mechanism to represent the connection between
>> >devlink instance and the devlink port created for the port
>> >representor.
>> >
>> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> >---
>> > drivers/net/ethernet/intel/ice/ice_sf_eth.c | 31 +++++++++++++++++++++
>> > 1 file changed, 31 insertions(+)
>> >
>> >diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>> >index ab90db52a8fc..abee733710a5 100644
>> >--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>> >+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>> >@@ -224,6 +224,36 @@ static void ice_sf_dev_release(struct device *device)
>> > 	kfree(sf_dev);
>> > }
>> > 
>> >+static ssize_t
>> >+sfnum_show(struct device *dev, struct device_attribute *attr, char *buf)
>> >+{
>> >+	struct devlink_port_attrs *attrs;
>> >+	struct auxiliary_device *adev;
>> >+	struct ice_sf_dev *sf_dev;
>> >+
>> >+	adev = to_auxiliary_dev(dev);
>> >+	sf_dev = ice_adev_to_sf_dev(adev);
>> >+	attrs = &sf_dev->dyn_port->devlink_port.attrs;
>> >+
>> >+	return sysfs_emit(buf, "%u\n", attrs->pci_sf.sf);
>> >+}
>> >+
>> >+static DEVICE_ATTR_RO(sfnum);
>> >+
>> >+static struct attribute *ice_sf_device_attrs[] = {
>> >+	&dev_attr_sfnum.attr,
>> >+	NULL,
>> >+};
>> >+
>> >+static const struct attribute_group ice_sf_attr_group = {
>> >+	.attrs = ice_sf_device_attrs,
>> >+};
>> >+
>> >+static const struct attribute_group *ice_sf_attr_groups[2] = {
>> >+	&ice_sf_attr_group,
>> >+	NULL
>> >+};
>> >+
>> > /**
>> >  * ice_sf_eth_activate - Activate Ethernet subfunction port
>> >  * @dyn_port: the dynamic port instance for this subfunction
>> >@@ -262,6 +292,7 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
>> > 	sf_dev->dyn_port = dyn_port;
>> > 	sf_dev->adev.id = id;
>> > 	sf_dev->adev.name = "sf";
>> >+	sf_dev->adev.dev.groups = ice_sf_attr_groups;
>> 
>> Ugh. Custom driver sysfs files like this are always very questionable.
>> Don't do that please. If you need to expose sfnum, please think about
>> some common way. Why exactly you need to expose it?
>
>Uh, hard question. I will drop it and check if it still needed to expose
>the sfnum, probably no, as I have never used this sysfs during testing.
>
>Should devlink be used for it?

sfnum is exposed over devlink on the port representor. If you need to
expose it on the actual SF, we have to figure it out. But again, why?


>
>Thanks
>
>> 
>> pw-bot: cr
>> 
>> 
>> > 	sf_dev->adev.dev.release = ice_sf_dev_release;
>> > 	sf_dev->adev.dev.parent = &pdev->dev;
>> > 
>> >-- 
>> >2.42.0
>> >
>> >
