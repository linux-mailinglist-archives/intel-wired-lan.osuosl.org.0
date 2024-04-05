Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB36189A58E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 22:17:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E151283498;
	Fri,  5 Apr 2024 20:17:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lBgF2zoDAEs7; Fri,  5 Apr 2024 20:17:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECD29834C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712348228;
	bh=ThPCWIT4pkg3fU7cysoFhmBMESsLUy5SSpFnLwP72yU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wHyC12B2/qTNvdYNSsj6TjGnnBgQTTVI6uYHjPVGqhlcbaqzWG6/KQ32dskl4N0e3
	 ouhMIMvlCNspHZ5SVC/rPG1IOpdBqDgzyVefVViCuuDKbEhNfzJ5R4Eqx6afYY5rrq
	 Xtc0TbWZwqgqxLhOO47bnZMuiwWSbiV4oIwNQNdR15jsMfkdlBg5ihl1GGJVj+vZGs
	 zRNdOg9oXZsym3auUxuAQd55kUuAxaP0Bb2xQrOzMKXL88PPNfNdnp5iGCbld2gEIF
	 KcE7euBcDZ+/l6Ufv0mRHDSWZlb9osTufXREaOysAJW+aYZfWibrFSf6UQOOv9PV8X
	 +EZB8PHCI6bPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECD29834C6;
	Fri,  5 Apr 2024 20:17:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE1611BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 20:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8A1D41D9D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 20:17:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JNmkxbdexzJo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 20:17:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::536; helo=mail-ed1-x536.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4367741D93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4367741D93
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4367741D93
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 20:17:00 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-565c6cf4819so6434066a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Apr 2024 13:17:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712348218; x=1712953018;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ThPCWIT4pkg3fU7cysoFhmBMESsLUy5SSpFnLwP72yU=;
 b=K1JjxafgwoHV7JPGPDqnGeGiA8FEWmfD9+ilrb9V8eXp3tEPpMkteDXbCW0nb8qPok
 RSRuwPa2iSYJxMsayI9P7nUbWAkLC8LxQUa+yR0Npff6+LTNwCGn96AOFE6To8KLl9l8
 CtbECl2G+agWlXbqzcKmp/9k78FWDQGVZo5wBmYbIdRPyDi0NYejhuoJBT3XfQnbQRNr
 DgmxDjyGTAJx2nkTd81aFUkfFtWVwydpDtxP84hbFyGXzKsn4KYkrJYArdAKy2uWQ4KQ
 3cK5osvq7Xmtl4rTkfooAK5z/J0K+q02Acr/4+2KTnWmpkSahdPu0aujA2wU4/5GIlbf
 Qhlw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX41wC9Zd/FL3IFZdKFeS/R+9uIyqXNwP1qaQqIgj0G6+DHcmo0AfIvLM2VcjJUMkq0q8yESYtmfrAWLCzxX1C7BaF330wk/0zSrzOIENVxOg==
X-Gm-Message-State: AOJu0Ywzq/M4mUijmCFtqn/Pp1ymxoVbc2JxdPhc0zo1h6Zorc1y7w2D
 7E1U+9VCSzUctoKev6bkOqCQdXC+CneRZvkItf0WPhLaBGQmOqA/
X-Google-Smtp-Source: AGHT+IGPUPXW71437OXIi/Vq6l1EajSrkn1zMUWwKDqFKiCJ6Mr4JtLkd4tYcj2olXaH5nJQ2HqeTw==
X-Received: by 2002:a50:f68b:0:b0:56d:f29d:c80d with SMTP id
 d11-20020a50f68b000000b0056df29dc80dmr2354134edn.5.1712348217709; 
 Fri, 05 Apr 2024 13:16:57 -0700 (PDT)
Received: from ?IPV6:2a01:c22:72bb:b200:e0e0:cd27:7a04:5c79?
 (dynamic-2a01-0c22-72bb-b200-e0e0-cd27-7a04-5c79.c22.pool.telefonica.de.
 [2a01:c22:72bb:b200:e0e0:cd27:7a04:5c79])
 by smtp.googlemail.com with ESMTPSA id
 y9-20020a056402440900b0056e3707323bsm492079eda.97.2024.04.05.13.16.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Apr 2024 13:16:57 -0700 (PDT)
Message-ID: <4c11ca11-8585-4cb5-bd0e-cd67eb1c208f@gmail.com>
Date: Fri, 5 Apr 2024 22:16:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>
References: <CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com>
 <Zg_MOG1OufptoRph@wunner.de> <cd9edf12-5241-4366-b376-d5ee8f919903@gmail.com>
 <ZhA5WAYyMQJsAey8@wunner.de> <ZhBN9p1yOyciXkzw@wunner.de>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <ZhBN9p1yOyciXkzw@wunner.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712348218; x=1712953018; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=ThPCWIT4pkg3fU7cysoFhmBMESsLUy5SSpFnLwP72yU=;
 b=EHsdpljdPdyIgRAKcPpHHBngzEc9TPgwjksyt+fEiEtfAfdjRbqKWAlCT5kkchu/Pc
 qmx5z1NTJ6Ip0pRwnDqqeXxySeqpSmVjEj4B3YrQQhgw4tUnY4hWbpgHbgg7Tqm/GJmv
 x4/B3oWszZWpd3bP9nkuVMxgQa58saB2PGWmT6Kp7k8w8u7yHmYfErEw8Jxw3TlQvmHh
 1z7n+bZkLZ2UOPmcysznn28ONJxSgkzlGwzLO2qWzXNSVdmwMpA1xyYkLo6ZurYatfnm
 AdV6ZygKN8hkmm+QgkbS1BZTTDik1CQbr8/bY2RNY0D2Lldnx04fIA4Fz+ynRhKM2DPZ
 Rd8A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=EHsdpljd
Subject: Re: [Intel-wired-lan] Deadlock in pciehp on dock disconnect
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
Cc: Kurt Kanzenbach <kurt@linutronix.de>, Roman Lozko <lozko.roma@gmail.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-pci@vger.kernel.org,
 Christian Marangi <ansuelsmth@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Sean Christopherson <seanjc@google.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 05.04.2024 21:16, Lukas Wunner wrote:
> On Fri, Apr 05, 2024 at 07:48:08PM +0200, Lukas Wunner wrote:
>> Roman, does the below patch fix the issue?
> 
> Actually the patch in my previous e-mail was crap as the unregistering
> of the LEDs happened after unbind of the pdev, i.e. after
> igc_release_hw_control() and pci_disable_device().
> 
For r8169 the first version is sufficient because everything is
device-managed.

> The driver otherwise doesn't seem to be using devm_*() and with
> devm_*() it's always all or nothing.  A mix of devm_*() and manual
> teardown is prone to ordering issues.
> 
> Here's another attempt:
> 
> -- >8 --
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 90316dc58630..f9ffe9df9a96 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -298,6 +298,7 @@ struct igc_adapter {
>  
>  	/* LEDs */
>  	struct mutex led_mutex;
> +	struct igc_led_classdev *leds;
>  };
>  
>  void igc_up(struct igc_adapter *adapter);
> @@ -723,6 +724,7 @@ void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
>  void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter);
>  
>  int igc_led_setup(struct igc_adapter *adapter);
> +void igc_led_teardown(struct igc_adapter *adapter);
>  
>  #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
>  
> diff --git a/drivers/net/ethernet/intel/igc/igc_leds.c b/drivers/net/ethernet/intel/igc/igc_leds.c
> index bf240c5daf86..4c2806c0878a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_leds.c
> +++ b/drivers/net/ethernet/intel/igc/igc_leds.c
> @@ -236,8 +236,8 @@ static void igc_led_get_name(struct igc_adapter *adapter, int index, char *buf,
>  		 pci_dev_id(adapter->pdev), index);
>  }
>  
> -static void igc_setup_ldev(struct igc_led_classdev *ldev,
> -			   struct net_device *netdev, int index)
> +static int igc_setup_ldev(struct igc_led_classdev *ldev,
> +			  struct net_device *netdev, int index)
>  {
>  	struct igc_adapter *adapter = netdev_priv(netdev);
>  	struct led_classdev *led_cdev = &ldev->led;
> @@ -257,15 +257,15 @@ static void igc_setup_ldev(struct igc_led_classdev *ldev,
>  	led_cdev->hw_control_get = igc_led_hw_control_get;
>  	led_cdev->hw_control_get_device = igc_led_hw_control_get_device;
>  
> -	devm_led_classdev_register(&netdev->dev, led_cdev);
> +	return led_classdev_register(&netdev->dev, led_cdev);
>  }
>  
>  int igc_led_setup(struct igc_adapter *adapter)
>  {
>  	struct net_device *netdev = adapter->netdev;
> -	struct device *dev = &netdev->dev;
> +	struct device *dev = &adapter->pdev->dev;
>  	struct igc_led_classdev *leds;
> -	int i;
> +	int i, ret;
>  
>  	mutex_init(&adapter->led_mutex);
>  
> @@ -273,8 +273,27 @@ int igc_led_setup(struct igc_adapter *adapter)
>  	if (!leds)
>  		return -ENOMEM;
>  
> -	for (i = 0; i < IGC_NUM_LEDS; i++)
> -		igc_setup_ldev(leds + i, netdev, i);
> +	for (i = 0; i < IGC_NUM_LEDS; i++) {
> +		ret = igc_setup_ldev(leds + i, netdev, i);
> +		if (ret)
> +			goto err;
> +	}
> +
> +	adapter->leds = leds;
>  
>  	return 0;
> +
> +err:
> +	for (i--; i >= 0; i--)
> +		led_classdev_unregister(&((leds + i)->led));
> +	return ret;
> +}
> +
> +void igc_led_teardown(struct igc_adapter *adapter)
> +{
> +	struct igc_led_classdev *leds = adapter->leds;
> +	int i;
> +
> +	for (i = 0; i < IGC_NUM_LEDS; i++)
> +		led_classdev_unregister(&((leds + i)->led));
>  }
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 2e1cfbd82f4f..cd164442ab35 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7025,6 +7025,9 @@ static void igc_remove(struct pci_dev *pdev)
>  	cancel_work_sync(&adapter->watchdog_task);
>  	hrtimer_cancel(&adapter->hrtimer);
>  
> +	if (IS_ENABLED(CONFIG_IGC_LEDS))
> +		igc_led_teardown(adapter);
> +
>  	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
>  	 * would have already happened in close and is redundant.
>  	 */
> 

