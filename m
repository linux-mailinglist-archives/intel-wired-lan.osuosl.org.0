Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AC9A097C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2019 20:32:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4AAA86DEE;
	Wed, 28 Aug 2019 18:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JOFG2OdCV3FE; Wed, 28 Aug 2019 18:32:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3042D86E92;
	Wed, 28 Aug 2019 18:32:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DF861BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2019 18:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25FC687D25
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2019 18:32:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CmUQEjtOcUrZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2019 18:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C594E87D24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2019 18:32:37 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id t6so1529472ios.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2019 11:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BQp41Plpp9rXk68mL9tjFcokYswNi2jbS5GvNm+mTfA=;
 b=fRpNX5k76HwcOWlUk+P3HZzQLe22IDkKoPnhRK3r9YtaheMh6HPvJUYIhDClTyJRMO
 pcXB32YzkPdDEsFKVTF9MfihF7UcwksyR95KewnJbzU1Kl3mHNR/WmRHKbw6B5gaLbcA
 4fcSOiVE9irOzBmhuxa56BOI17kD4dSYLuxd5gdLZI3iiVDXFhfzbIFuRiRHQbALoHog
 FbSAWUIDUVZVNThlKY8KVADqI2cuvcVqeNHmt7L3IVriiJXlufrQkUnofLCVvxNDUAeI
 kvxGnjuflv33aXY9Iv8UMTLNc7V7gf6w/fJ2PsgzZ+cP5A1E8ebXZLn2CaIxBdqwsgXN
 dFaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BQp41Plpp9rXk68mL9tjFcokYswNi2jbS5GvNm+mTfA=;
 b=qDl3iKMJG+CUmSuUM0GxhDdb8DbJrRxBSc24PzRjDoG2t4+eFcWTEia9XCZnajyN2w
 byrQTO+m3UTZG3lAmSFO9plBniGxjhy9S66o4jtRxiE0Md4aOu6VX4Pag8NP+jMj3gN+
 t/WDyAuDdReirZsXQ2NX7GXXRdmaEiB53lndAHPOCxd0ukKr9jLX5w0KE8dm5sWrD3Xq
 2hSl6hV5i+z6ovgx/sk8aR1rWp6FHQ06+bwHa/qESr4rkaABLJTo50FUYp6NRvmEj8hy
 7Uhtqc+8YWau9RM5d4BCX2C1Lc8HujPtSV6kZY5bjUQBc0u+UcElMuR6ASudyZWnt3z/
 s1wQ==
X-Gm-Message-State: APjAAAXPIgMNoivZN3ZY58zxP5JGJqwspA+nHKTjvN/4ssM6HC3ChQb+
 MvBrXnlZlxY63zQ/aWqufV4UHQEXZdDvxtG6HPs=
X-Google-Smtp-Source: APXvYqwUMrjWE91MPS5vCLYmXRDkItZ7vYbIMkvnDkVwGaGDyRe9RCD8SFaWL+9sOTRUI9h/R2UGdymn5+eKFcyothI=
X-Received: by 2002:a5e:8c11:: with SMTP id n17mr6120654ioj.64.1567017156782; 
 Wed, 28 Aug 2019 11:32:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190828173912.29293-1-bob.beckett@collabora.com>
In-Reply-To: <20190828173912.29293-1-bob.beckett@collabora.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 28 Aug 2019 11:32:14 -0700
Message-ID: <CAKgT0UfeAgS-Jh69AdRNUzG2qt_gcHrLP1DP1v-5bxpY8UwpZg@mail.gmail.com>
To: Robert Beckett <bob.beckett@collabora.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: add rx drop enable attribute
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 28, 2019 at 10:40 AM Robert Beckett
<bob.beckett@collabora.com> wrote:
>
> To allow userland to enable or disable dropping packets when descriptor
> ring is exhausted, add an adapter rx_drop_en attribute.
>
> This can be used in conjunction with flow control to mitigate packet storms
> (e.g. due to network loop or DoS) by forcing the network adapter to send
> pause frames whenever the ring is close to exhaustion.
>
> By default this will maintain previous behaviour of enabling dropping of
> packets during ring buffer exhaustion.
> Some use cases prefer to not drop packets upon exhaustion, but instead
> use flow control to limit ingress rates and ensure no dropped packets.
> This is useful when the host CPU cannot keep up with packet delivery,
> but data delivery is more important than throughput via multiple queues.
>
> Userland can write 0 to rx_drop_en to disable packet dropping via udev.
>
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>

Instead of doing this as a sysfs file it might be better to just do
this as an ethtool private flag like what I did for "legacy-rx".

> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  1 +
>  drivers/net/ethernet/intel/igb/igb_main.c | 60 ++++++++++++++++++++++-
>  2 files changed, 60 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index ca54e268d157..efada57a05e1 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -594,6 +594,7 @@ struct igb_adapter {
>         struct igb_mac_addr *mac_table;
>         struct vf_mac_filter vf_macs;
>         struct vf_mac_filter *vf_mac_list;
> +       bool rx_drop_enable; /* drop packets when descriptor ring exhausted */
>  };
>
>  /* flags controlling PTP/1588 function */
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 105b0624081a..5b499130c3f5 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2982,6 +2982,54 @@ static s32 igb_init_i2c(struct igb_adapter *adapter)
>         return status;
>  }
>
> +static ssize_t rx_drop_en_show(struct device *dev,
> +                              struct device_attribute *attr,
> +                              char *buf)
> +
> +{
> +       struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
> +       struct igb_adapter *adapter = netdev_priv(netdev);
> +
> +       if (adapter->rx_drop_enable)
> +               return sprintf(buf, "1\n");
> +       else
> +               return sprintf(buf, "0\n");
> +}
> +
> +static ssize_t rx_drop_en_store(struct device *dev,
> +                               struct device_attribute *attr,
> +                               const char *buf, size_t count)
> +{
> +       struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
> +       struct igb_adapter *adapter = netdev_priv(netdev);
> +       struct e1000_hw *hw = &adapter->hw;
> +       int queue_idx, reg_idx;
> +       bool val;
> +       u32 srrctl;
> +       int ret;
> +
> +       ret = kstrtobool(buf, &val);
> +       if (ret < 0)
> +               return ret;
> +
> +       adapter->rx_drop_enable = val;
> +
> +       /* set for each currently active ring */
> +       for (queue_idx = 0; queue_idx < adapter->num_rx_queues; queue_idx++) {
> +               reg_idx = adapter->rx_ring[queue_idx]->reg_idx;
> +               srrctl = rd32(E1000_SRRCTL(reg_idx));
> +               if (val == 0)
> +                       srrctl &= ~E1000_SRRCTL_DROP_EN;
> +               else
> +                       srrctl |= E1000_SRRCTL_DROP_EN;
> +               wr32(E1000_SRRCTL(reg_idx), srrctl);
> +       }
> +
> +       return count;
> +}
> +
> +static DEVICE_ATTR_RW(rx_drop_en);
> +
>  /**
>   *  igb_probe - Device Initialization Routine
>   *  @pdev: PCI device information struct
> @@ -3329,6 +3377,9 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>                 goto err_eeprom;
>         }
>
> +       /* Add adapter attributes */
> +       device_create_file(&pdev->dev, &dev_attr_rx_drop_en);
> +
>         /* let the f/w know that the h/w is now under the control of the
>          * driver.
>          */
> @@ -3655,6 +3706,9 @@ static void igb_remove(struct pci_dev *pdev)
>          */
>         igb_release_hw_control(adapter);
>
> +       /* Remove addapter attributes */
> +       device_remove_file(&pdev->dev, &dev_attr_rx_drop_en);
> +
>  #ifdef CONFIG_PCI_IOV
>         igb_disable_sriov(pdev);
>  #endif
> @@ -3753,6 +3807,9 @@ static void igb_init_queue_configuration(struct igb_adapter *adapter)
>         max_rss_queues = igb_get_max_rss_queues(adapter);
>         adapter->rss_queues = min_t(u32, max_rss_queues, num_online_cpus());
>
> +       if (adapter->vfs_allocated_count || adapter->rss_queues > 1)
> +               adapter->rx_drop_enable = true;
> +
>         igb_set_flag_queue_pairs(adapter, max_rss_queues);
>  }
>
> @@ -4504,7 +4561,8 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
>         if (hw->mac.type >= e1000_82580)
>                 srrctl |= E1000_SRRCTL_TIMESTAMP;
>         /* Only set Drop Enable if we are supporting multiple queues */
> -       if (adapter->vfs_allocated_count || adapter->num_rx_queues > 1)
> +       if (adapter->rx_drop_enable &&
> +               (adapter->vfs_allocated_count || adapter->num_rx_queues > 1))

Isn't this redundant due to the code above where you were overriding
the value and setting it to true based on the vfs_allocated_count and
num_rx_queues? You could probably just use rx_drop_enable by itself.

>                 srrctl |= E1000_SRRCTL_DROP_EN;
>
>         wr32(E1000_SRRCTL(reg_idx), srrctl);
> --
> 2.18.0
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
