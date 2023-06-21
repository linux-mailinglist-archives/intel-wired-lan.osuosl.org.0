Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB5D7386C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 16:23:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00756813CA;
	Wed, 21 Jun 2023 14:23:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00756813CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687357415;
	bh=7qYhNTwgfNHdCfp/dj4EaesBhDJ0GfBn7UveP4sR2UI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8ZRGLYioXvOGnAaS1ySisFteaYD4x1ehgYClnT4UZUhU/tb2XZabPOlwN1ihFXnnb
	 xvQwRaw+FtFbRDOVWroECynhlR1oaVMT2yBw8/UTjtoYufawd9usCVcOdU55lPl7eY
	 QMYgV2NF4bS0A8MG8uti9RvbyAwcvV09BWuiLweenIOwkARH6kBnTXjxLhP5ibKeZD
	 1GdhrK311FJBFZIex27Wf93+TfVkOL3xOjJgSO6PwLH7O0G9mwZE9Yl7k44h5lZItL
	 WQRcr4b53tXd+zexv/mk/T54q5vQ0vBWPhM7xi/HWcVpVIi9oDNaFNwUiMWJbSNQQb
	 IfXaAexFoyW0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTr_cFFHvao2; Wed, 21 Jun 2023 14:23:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C09F381390;
	Wed, 21 Jun 2023 14:23:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C09F381390
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B6561BF473
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:23:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 203C480E3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:23:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 203C480E3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUf2ZTB_c46B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 14:23:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69D7980DF9
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69D7980DF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:23:28 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id
 d2e1a72fcca58-6686ef86110so2321212b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 07:23:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687357408; x=1689949408;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tirA0cT91xteVoTFn4SjAFuV0+tvKI9IkCl5oFMwNV4=;
 b=RcZsudpSBi0Bu8VLKARRINfh011XRY7CX/+AdyOlZBU1MA+nyuYQC3uV/zSb/AWVSl
 SNJXgLiipSHiS0P0RIygoxV/r6uBoIZPwS7nHpgaBGSWjVvPyRFMo61tM5O775sKIFp/
 VLxKdi4xb8IhSWr+zyDTsuOwaHf1pYTg2evX9vCivVuvqBOyR9TzCk1beYefAMqfPpqF
 gEufA4LadukEhNhEoeAah7ebkdz1xnSEdeqdxHQ/2z2xHBy66G9WABFgmiZl7pEBIRga
 E7dDAOkC7POX9MJ7lhsqh2hKwClP6HteNO8stQjB0V2XoZMfaWBo+Z74P0v0zTLs4lP/
 eeIg==
X-Gm-Message-State: AC+VfDzpZKsgnWsQ3MnqoUyHdmoIKJKeSYJsiDAOmNA5/ijOmuyI3Ihn
 9mojWjppreDrHwIF4mejXFFdxbCHS7eVe31GLT0=
X-Google-Smtp-Source: ACHHUZ7BIYW/nRHpJ0LfW42hKq7id+3yBhRctuOqQw4EKf7pEvl1dlEdVRZyFNbzF/dowR0EOUMd+g==
X-Received: by 2002:a05:6a20:1e81:b0:123:7989:ba4e with SMTP id
 dl1-20020a056a201e8100b001237989ba4emr615520pzb.35.1687357407755; 
 Wed, 21 Jun 2023 07:23:27 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.25.194]) by smtp.gmail.com with ESMTPSA id
 u5-20020a62ed05000000b006687da3db65sm2987132pfh.75.2023.06.21.07.23.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 07:23:27 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
 (envelope-from <jgg@ziepe.ca>) id 1qByk0-007cw1-KN;
 Wed, 21 Jun 2023 11:23:24 -0300
Date: Wed, 21 Jun 2023 11:23:24 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Lingyu Liu <lingyu.liu@intel.com>
Message-ID: <ZJMH3DF7nJ+OG9BJ@ziepe.ca>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-14-lingyu.liu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230621091112.44945-14-lingyu.liu@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ziepe.ca; s=google; t=1687357408; x=1689949408;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=tirA0cT91xteVoTFn4SjAFuV0+tvKI9IkCl5oFMwNV4=;
 b=llkW21/FhzNP63O6hSnpksFOaTQ88X1xiuTHZBr/c7/1ZPi1OJ3+6fejhPjGurYg/W
 /SLzyZx7rJR0lPgCu6LW4p+YoyO7fEdJfVvGGbl9sQArZIIH4m8lO8qg7pSKwuWyA43Z
 H3JJcJgU80FG39H/imBN3chta64e/6vByiyan+Itwn3zAVoxYdTdf7yCCawKuwVo+1ST
 dy6w8pE6sroHSrO3hnJH95s4H5IO1oHEVBqhqqssVspcGhHA9AjOhgUI63iP2VDDQdco
 aUffUPt5+nvZ6XxH3DnnYgTZt0T6keqD2eA9kduR9nh2QU/udXHzd8FJfWOIHJiBPKMU
 XxFw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca
 header.a=rsa-sha256 header.s=google header.b=llkW21/F
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 13/15] vfio/ice: implement
 vfio_pci driver for E800 devices
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, intel-wired-lan@lists.osuosl.org,
 phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 21, 2023 at 09:11:10AM +0000, Lingyu Liu wrote:

> +static struct file *
> +ice_vfio_pci_step_device_state_locked(struct ice_vfio_pci_core_device *ice_vdev,
> +				      u32 new, u32 final)
> +{
> +	struct device *dev = &ice_vdev->core_device.pdev->dev;
> +	u32 cur = ice_vdev->mig_state;
> +	int ret;
> +
> +	if (final == VFIO_DEVICE_STATE_RESUMING)
> +		ice_vdev->is_dst = true;
> +	else if (final == VFIO_DEVICE_STATE_STOP)
> +		ice_vdev->is_dst = false;

Definately not. The kernel should not be guessing which end is which,
the protocol already makes it clear.

> +
> +	if (cur == VFIO_DEVICE_STATE_RUNNING && new == VFIO_DEVICE_STATE_STOP) {
> +		if (!ice_vdev->is_dst)
> +			dev_info(dev, "Live migration begins\n");
> +		ice_migration_suspend_vf(ice_vdev->vf_handle, ice_vdev->is_dst);
> +		return NULL;
> +	}
> +
> +	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_STOP_COPY) {
> +		struct ice_vfio_pci_migration_file *migf;
> +
> +		migf = ice_vfio_pci_stop_copy(ice_vdev);
> +		if (IS_ERR(migf))
> +			return ERR_CAST(migf);
> +		get_file(migf->filp);
> +		ice_vdev->saving_migf = migf;
> +		return migf->filp;
> +	}
> +
> +	if (cur == VFIO_DEVICE_STATE_STOP_COPY && new == VFIO_DEVICE_STATE_STOP) {
> +		ice_vfio_pci_disable_fds(ice_vdev);
> +		dev_info(dev, "Live migration ends\n");
> +		return NULL;
> +	}
> +
> +	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_RESUMING) {
> +		struct ice_vfio_pci_migration_file *migf;
> +
> +		migf = ice_vfio_pci_resume(ice_vdev);
> +		if (IS_ERR(migf))
> +			return ERR_CAST(migf);
> +		get_file(migf->filp);
> +		ice_vdev->resuming_migf = migf;
> +		return migf->filp;
> +	}
> +
> +	if (cur == VFIO_DEVICE_STATE_RESUMING && new == VFIO_DEVICE_STATE_STOP) {
> +		ret = ice_vfio_pci_load_state(ice_vdev);
> +		if (ret)
> +			return ERR_PTR(ret);
> +		ice_vfio_pci_disable_fds(ice_vdev);
> +		return NULL;
> +	}
> +
> +	if (cur == VFIO_DEVICE_STATE_STOP && new == VFIO_DEVICE_STATE_RUNNING)
> +		return NULL;

Lack of P2P is going to be a problem too

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
